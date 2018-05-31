function [mean,covariance]=calMeanVariance(Img)
    mask=roipoly(Img);
    R=Img(:,:,1);
    G=Img(:,:,2);
    B=Img(:,:,3);
    s_img_r=ROI(R,mask);
    s_img_g=ROI(G,mask);
    s_img_b=ROI(B,mask);
    rgb_roi=[s_img_r,s_img_g,s_img_b];
    mean=claculate_mean(rgb_roi);
    mean=mean';
    covariance=claculate_covariance(mean,rgb_roi)
end

function s_img=ROI(s_img,mask)
    sample_ind=find(mask>0);
    s_img=s_img(sample_ind);
end

function mean=claculate_mean(rgb_roi)
    [colum,width]=size(rgb_roi);
    sum_of_pixel=sum(rgb_roi,1);
    mean=sum_of_pixel/colum;
end

function covariance=claculate_covariance(mean,rgb_roi)
    [colum,width]=size(rgb_roi);
    sum_of_different=zeros(3,3);
    for i=1:colum
        temp=double(rgb_roi(i,:)')-mean;
        temp_t=temp';
        sum_of_different=double(sum_of_different)+temp*temp_t;
    end
    covariance=sum_of_different/colum;
end




