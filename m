Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iANxOtUT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9454441211B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7B1B44D33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:36 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 6A9B3401B0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:20:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RQ0YBPrm;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="Sx/tNnOB";
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NI5uAQ1851867
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:20:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3T4PeH87tzer/BxO3NLS+Z5b
	dStUULU/A8xhL/S5OgM=; b=RQ0YBPrml89hdSmkuGU61ND+Zy4XWqOk0uNe+rgn
	VMA+sel3eLgiankD/ScPOZJecycfE4yhtDcj5MiNI5E7XpkonU4BAlKyiLrVjoCN
	xFNDdP46uZ9rXosaJrJjuoh30rknH9j+ArXXIVKW2LgrUStVxiFf+1mUIrEzXGyA
	sDotFZ477vuagQ+Phq+wb44X9HKID2BygdVZgApjk0l0KPfFLbXeEFmbVMRxXJ7K
	PQhrbfF7qK9TPEYQHn+xxti9f5yli/huUq/6rAq6+Njro0N7Q18cD92HCiQacn+m
	tqSOl2lGrj+d/kkg8f/4AJYTnLvwRPUZ/KWm8wG70ZS48A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgte8s0f3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:20:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70e610242so4607578285a.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771885254; x=1772490054; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3T4PeH87tzer/BxO3NLS+Z5bdStUULU/A8xhL/S5OgM=;
        b=Sx/tNnOBXmPCR/PLynLC/O2Ue3N6KEOqGKqddT9NtjL65Y5sN+hvzEcOgYZucFc/7Z
         rhPdYwXzW1djlgKybSifJnl7fIrrSN825qngPnbfz3dqlnz0phrvyh2BkGTFXyrOJzoz
         hguYOb1B9MDzuSWF/UgSgrpRahs+yqpJsix1Puz/Haz43hwsD8YeR/m8aP/FwUExWahH
         alTEHFhmSmLBPp7mMRpvpB8V7Cc5YvHg8BzleLRXrhwyoBCymDgj/s90hK/EFYaMYZkv
         rNbQSVi9LyvkqLOOvjzn5AcMAP4NHJ6c6tzY7j6lnruquj0n6EDmucj5UYmZTajJJ0Vj
         tFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771885254; x=1772490054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3T4PeH87tzer/BxO3NLS+Z5bdStUULU/A8xhL/S5OgM=;
        b=PyHkAp8hAWMMqJNyL8oyAx1TPsCYRJK/MYMkoDWhyIJ9jaC1CFLJm6U74031+KxGk6
         ox0Ui60BXFRdGC2ECeH+17ItLVSWRM4hIQgm4+0DMkMqxo8cJJuMO5F/jYZl5ozn9ll2
         NaFei9HxlSrSrOYewk3i0o5AI5dNibqh7VOSOxOBFg03HY6hsOXFfQKmN5So2I+mtswO
         18HDRyiCDsYP7V/iI+WHDka2U2R+e09P5w4COCkWu5WnFY3pOZz++CO3LTJuR9gkaBoV
         804nqd9z4sp39ZvJ0TMaO5lLeevSkqWYNKe49oZimrvAMKaEW9h2Uq1cpOerRy6CfOmp
         sbtw==
X-Forwarded-Encrypted: i=1; AJvYcCUDxgB64YIKdnt5zzAtFm80ih6zli3yPUIKM8fJOznRYLXLSZAp2Lxpk44SuQlGtLP3ULTAU6FNLlJMANm8@lists.linaro.org
X-Gm-Message-State: AOJu0YwqWuFAmydpQnKb/K3kd4HGHCV6hopIpvnOhZnFb8i4Me+Iyhs2
	D1/OAiViilQKi5xDDTTRc9L+2fmn3bZ5ziGYvnRIhiehBlUCEhUIjNXMaIYQ3yEt3DtyiJuWrWZ
	/FgLfiOUPszSU8DiWP9PTy/QdqEGLTwQj6mTlNWgCrsuvgksIB36bJjDUfB8gdvhs9HNHZA==
X-Gm-Gg: AZuq6aKrIHYcNzxWsFe6YjzJgJYpofFg9it0KLkVPJczq1/W1QOkAwk1+E9tk1XV+8Z
	oJvphPHYu90s5YYT7r5GLPjdXpU8U2cCZYyLittVskerEq9RJiQx2VZHpCnrWlR+zVHMioXnaIt
	OFjIK9cOZ7/aJlbX2o07gco7uB/tCHhmHGrRQg+9M4pLOFIkBwBDYcRh4YxcYkoirhOrYOjV/oO
	K9wZQYrgcXQVfYdQ0U1UladCr3bOTMoZ2eOfGVQrX8x91IuTwl+nOV0V8kuXXDx6CCVsDivZMRT
	EMKKYdH6/Xftcv8Pedsu08rp/9rspWqSath4TvIt1UgyghzGRt0q04HFT1GsnnJfv9ZXsYJ/Jam
	4mpRiuctz9iFg1P+pAr5FoFM/jyzqVy7yzCr/vMwsbp50ErXlx3L6rajjQ4nJJ2y6Ad7qZtwA4e
	l3G39NwtT6Fl3tV8Lg395VkjDmHhWHbV6QLg8=
X-Received: by 2002:a05:620a:7112:b0:8be:e0c4:26ca with SMTP id af79cd13be357-8cb8ca76d0amr1295283185a.61.1771885253885;
        Mon, 23 Feb 2026 14:20:53 -0800 (PST)
X-Received: by 2002:a05:620a:7112:b0:8be:e0c4:26ca with SMTP id af79cd13be357-8cb8ca76d0amr1295279485a.61.1771885253294;
        Mon, 23 Feb 2026 14:20:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb45938sm1797527e87.69.2026.02.23.14.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:20:52 -0800 (PST)
Date: Tue, 24 Feb 2026 00:20:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <rnhqwqtd66fmvmyobhrodzoa7x2etzjjh7xhqrn5hkmibms5cd@ucggzznrx7j6>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-8-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-8-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0oT3EQc0f6mL60-_B47tHJDGtRVNsSU3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5NCBTYWx0ZWRfX7VVbGm+BQ+Bd
 I/oVA0O6Fc3cJp/gWlE1KhqgaHsvsPdCrKsAjlxhgqL7URp2fltIcUIPJa3Y8ayezNJgWjmb2AH
 ht7Ywm4MpusIP9IEzsPZSTny8eQD6zdyzJT+LnY0MC88zTnA682KKqdokL9cJhqoY14uS//EOD4
 9uZplw9rlaoRDUn3s7H8wLQUNzKn3Szex7tAIkQeb40lAQJiNo/VHcF671rk/Qiyk0kCCtvedVR
 uSG2TCdFu6GZFDdKAABC6Fj5jEli0jyO7OE1++oP3Qt0BW+JaS5rx2XUMDs+U3EGD2G/YssrWvo
 8AaxcYJU8m+aL46P9QDfRmdlyOqXYDnaaRV94XMNIwS/1+QnVtNggJdm1A9M91vEQUMDzqD6Iyu
 W8ZfIx9ti19M4etOXAjk3vS/tXtWCakzoPGk9iRgbjipH/zPmWiIHZt7+cBK+h/zvoTuwhs1dhd
 9fCiiIR4Ho3ceOssg3w==
X-Proofpoint-GUID: 0oT3EQc0f6mL60-_B47tHJDGtRVNsSU3
X-Authority-Analysis: v=2.4 cv=WqQm8Nfv c=1 sm=1 tr=0 ts=699cd2c6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=i04C7yyKdwGZ-rgJMjYA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230194
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BOGKVH7JPO5QEOHNLDQX3HQRD7A3YXM5
X-Message-ID-Hash: BOGKVH7JPO5QEOHNLDQX3HQRD7A3YXM5
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:52 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 08/18] accel/qda: Add per-file DRM context and open/close handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOGKVH7JPO5QEOHNLDQX3HQRD7A3YXM5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1242];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 9454441211B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:39:02AM +0530, Ekansh Gupta wrote:
> Introduce per-file and per-user context for the QDA DRM accelerator
> driver. A new qda_file_priv structure is stored in file->driver_priv
> for each open file descriptor, and a qda_user object is allocated per
> client with a unique client_id generated from an atomic counter in
> qda_dev.
> 
> The DRM driver now provides qda_open() and qda_postclose() callbacks.
> qda_open() resolves the qda_dev from the drm_device, allocates the
> qda_file_priv and qda_user structures, and attaches them to the DRM
> file. qda_postclose() tears down the per-file context and frees the
> qda_user object when the file is closed.
> 
> This prepares the QDA driver to track per-process state for future
> features such as per-client memory mappings, job submission contexts,
> and access control over DSP compute resources.

Start by describing the problem instead of stuffing it to the end. Can
we use something better suited for this task, like IDR?

> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/qda_drv.c | 117 ++++++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_drv.h |  30 ++++++++++++
>  2 files changed, 147 insertions(+)
> 
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index a9113ec78fa2..bf95fc782cf8 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -12,11 +12,127 @@
>  #include "qda_drv.h"
>  #include "qda_rpmsg.h"
>  
> +static struct qda_drm_priv *get_drm_priv_from_device(struct drm_device *dev)
> +{
> +	if (!dev)
> +		return NULL;
> +
> +	return (struct qda_drm_priv *)dev->dev_private;
> +}
> +
> +static struct qda_dev *get_qdev_from_drm_device(struct drm_device *dev)
> +{
> +	struct qda_drm_priv *drm_priv;
> +
> +	if (!dev) {
> +		qda_dbg(NULL, "Invalid drm_device\n");
> +		return NULL;
> +	}
> +
> +	drm_priv = get_drm_priv_from_device(dev);
> +	if (!drm_priv) {
> +		qda_dbg(NULL, "No drm_priv in dev_private\n");
> +		return NULL;
> +	}
> +
> +	return drm_priv->qdev;
> +}
> +
> +static struct qda_user *alloc_qda_user(struct qda_dev *qdev)
> +{
> +	struct qda_user *qda_user;
> +
> +	qda_user = kzalloc_obj(*qda_user, GFP_KERNEL);
> +	if (!qda_user)
> +		return NULL;
> +
> +	qda_user->client_id = atomic_inc_return(&qdev->client_id_counter);
> +	qda_user->qda_dev = qdev;
> +
> +	qda_dbg(qdev, "Allocated qda_user with client_id=%u\n", qda_user->client_id);
> +	return qda_user;
> +}
> +
> +static void free_qda_user(struct qda_user *qda_user)
> +{
> +	if (!qda_user)
> +		return;
> +
> +	qda_dbg(qda_user->qda_dev, "Freeing qda_user client_id=%u\n", qda_user->client_id);
> +
> +	kfree(qda_user);
> +}
> +
> +static int qda_open(struct drm_device *dev, struct drm_file *file)
> +{
> +	struct qda_user *qda_user;
> +	struct qda_file_priv *qda_file_priv;
> +	struct qda_dev *qdev;
> +
> +	if (!file) {
> +		qda_dbg(NULL, "Invalid file pointer\n");
> +		return -EINVAL;
> +	}
> +
> +	qdev = get_qdev_from_drm_device(dev);
> +	if (!qdev) {
> +		qda_dbg(NULL, "Failed to get qdev from drm_device\n");
> +		return -EINVAL;
> +	}
> +
> +	qda_file_priv = kzalloc(sizeof(*qda_file_priv), GFP_KERNEL);
> +	if (!qda_file_priv)
> +		return -ENOMEM;
> +
> +	qda_file_priv->pid = current->pid;
> +
> +	qda_user = alloc_qda_user(qdev);
> +	if (!qda_user) {
> +		qda_dbg(qdev, "Failed to allocate qda_user\n");
> +		kfree(qda_file_priv);
> +		return -ENOMEM;
> +	}
> +
> +	file->driver_priv = qda_file_priv;
> +	qda_file_priv->qda_user = qda_user;
> +
> +	qda_dbg(qdev, "Device opened successfully for PID %d\n", current->pid);
> +
> +	return 0;
> +}
> +
> +static void qda_postclose(struct drm_device *dev, struct drm_file *file)
> +{
> +	struct qda_dev *qdev;
> +	struct qda_file_priv *qda_file_priv;
> +	struct qda_user *qda_user;
> +
> +	qdev = get_qdev_from_drm_device(dev);
> +	if (!qdev || atomic_read(&qdev->removing)) {
> +		qda_dbg(NULL, "Device unavailable or removing\n");
> +		return;

Even if it is being removed, no need to free the memory?

> +	}
> +
> +	qda_file_priv = (struct qda_file_priv *)file->driver_priv;
> +	if (qda_file_priv) {
> +		qda_user = qda_file_priv->qda_user;
> +		if (qda_user)
> +			free_qda_user(qda_user);
> +
> +		kfree(qda_file_priv);
> +		file->driver_priv = NULL;
> +	}
> +
> +	qda_dbg(qdev, "Device closed for PID %d\n", current->pid);
> +}
> +
>  DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>  
>  static struct drm_driver qda_drm_driver = {
>  	.driver_features = DRIVER_COMPUTE_ACCEL,
>  	.fops			= &qda_accel_fops,
> +	.open			= qda_open,
> +	.postclose		= qda_postclose,
>  	.name = DRIVER_NAME,
>  	.desc = "Qualcomm DSP Accelerator Driver",
>  };
> @@ -58,6 +174,7 @@ static void init_device_resources(struct qda_dev *qdev)
>  
>  	mutex_init(&qdev->lock);
>  	atomic_set(&qdev->removing, 0);
> +	atomic_set(&qdev->client_id_counter, 0);
>  }
>  
>  static int init_memory_manager(struct qda_dev *qdev)
> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> index 2b80401a3741..e0ba37702a86 100644
> --- a/drivers/accel/qda/qda_drv.h
> +++ b/drivers/accel/qda/qda_drv.h
> @@ -10,6 +10,7 @@
>  #include <linux/list.h>
>  #include <linux/mutex.h>
>  #include <linux/rpmsg.h>
> +#include <linux/types.h>
>  #include <linux/xarray.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
> @@ -20,6 +21,33 @@
>  /* Driver identification */
>  #define DRIVER_NAME "qda"
>  
> +/**
> + * struct qda_file_priv - Per-process private data for DRM file
> + *
> + * This structure tracks per-process state for each open file descriptor.
> + * It maintains the IOMMU device assignment and links to the legacy qda_user
> + * structure for compatibility with existing code.
> + */
> +struct qda_file_priv {
> +	/* Process ID for tracking */
> +	pid_t pid;
> +	/* Pointer to qda_user structure for backward compatibility */
> +	struct qda_user *qda_user;
> +};
> +
> +/**
> + * struct qda_user - Per-user context for remote processor interaction
> + *
> + * This structure maintains per-user state for interactions with the
> + * remote processor, including memory mappings and pending operations.
> + */
> +struct qda_user {
> +	/* Unique client identifier */
> +	u32 client_id;
> +	/* Back-pointer to device structure */
> +	struct qda_dev *qda_dev;
> +};
> +
>  /**
>   * struct qda_drm_priv - DRM device private data for QDA device
>   *
> @@ -52,6 +80,8 @@ struct qda_dev {
>  	struct qda_drm_priv *drm_priv;
>  	/* Flag indicating device removal in progress */
>  	atomic_t removing;
> +	/* Atomic counter for generating unique client IDs */
> +	atomic_t client_id_counter;
>  	/* Name of the DSP (e.g., "cdsp", "adsp") */
>  	char dsp_name[16];
>  	/* Compute context-bank (CB) child devices */
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
