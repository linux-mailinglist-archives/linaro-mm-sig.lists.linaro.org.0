Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBPKH5MZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2CB4127E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39E15404ED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:06 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 026753F7E6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:36:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=BlTOmEth;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=EEqJJR8T;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6226h9fL2504598
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8dFOeVIxat+blul/Mwn+SDuNqbfDaRRvU9J92gKowqk=; b=BlTOmEthli+6TXZE
	mIqhDjGdubk5skAx6/Ve28p2NaQQY0XNkCr+DaPphL7+sMmUKUK6YwDOxO52wu28
	PioLN9DzwAQTTKRDVggo2eFxbdYxMHdM9ugn7kbggM12U1I0K24A9/gL0fk4ZuWj
	Hd0uR+h+tmM2ct35NVXXFBk/d6KDH7GfWRmGR4lmN4t46BDeAn3pU84BphuyE3Of
	Ghk2qeLNO6xtoca3j/JLVhOnwKAX17Syt+DxrrmkWJwlFuSUwIoRBeKHvxdw1NUS
	WrL2t72atGHSga7+NTvXD+SQyFrGUeGhgw/5T6Sl8wIWn1yHluC2nEi95x2J7xPj
	BMYC1w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn5herc3x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:36:10 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35984b91ffeso1074576a91.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440570; x=1773045370; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8dFOeVIxat+blul/Mwn+SDuNqbfDaRRvU9J92gKowqk=;
        b=EEqJJR8TMfXDZ8U+2FoHDRIihXu+/2sVeTgFti/zmiU+/QLeR5b3vK78/Nc2pBhJGl
         fL+x7rstM91Yz1gd1k1VO5QZKjZr/M1gi+DFNeqGqT/6RgAy4aexMbs9e3rt4xfkPkWa
         vkYTUkzuXnefYeTaF0OjD8Ds1xK4cHJ8wBjKs2i26l5T1dCzGbjy1RQHtHfaF2l7J4R0
         aUrzgNtc1zxrJnuoIMJ+OGDok9zW325vCrIuuEHMNBFvvXLVNWz0YFJp3m+ya3tbm5se
         BB1je2y9pCc5q1ONf/7hkhG4e4/TKQau4DD7+50ooP75Duh/4Rnmhz6s9OmQAzD7r82B
         JGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440570; x=1773045370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8dFOeVIxat+blul/Mwn+SDuNqbfDaRRvU9J92gKowqk=;
        b=Q36WeI0Z02uM7gDJeF+I8tJN99IoQy3vBF+Pho4nQbDMoiZhxMxxmlweb3G5khMRsM
         eSRunXh9dJs7ZWLQb1feke6Rb1nghBULB25wDr50rWfG4kjEjGDKHxKnXYERE+2mlBKs
         diDGzDH7Jwi6VjW1bjIQNCdlczUKlT1NOQ2U0xIVmI30AE+pRErAtmAtlf48Klfyb9cv
         nSVa6L4CMknb/ejIWSy9l2o7ycSZb7+9B+gy1kEJy1u2darJV5gxKXQK/Ue13V4Byn4l
         upxF5iTQFduW3u55YNRmj9+Ak2yNmfr9vfFkk2O47qsHDWljQUswbTYiedBkDhVdzJKT
         5xNg==
X-Forwarded-Encrypted: i=1; AJvYcCWUp8i9QkkerUaNMXU/JnuG9b1e1ZxdwegySE7gwynRTLO74elA7Bm0TXLAPogQfeEB+2YIpF0t44EpeD2m@lists.linaro.org
X-Gm-Message-State: AOJu0Yy3vE5pFMW/f5kdW4Uz4ZxPmTnYa8K19tayIUKn7oiEDxlR6Ez8
	CuNK9bHXYsxAF/SjkI5ksPgmfYlUiafJl03hy6ZJBRArYcsUDwLKDg/UQ8IuwiIB85A3Ws+b7hJ
	X5WQ20DiZgi+zusntZDTGyeWG58XCQSfLrccvIiqe06cwcjWnXbPAJ3Eiq513q3NMPrwhEA==
X-Gm-Gg: ATEYQzwj/Cruuqn8jaJfys77fvLIxwF/JqreFQAA1vuEeh7xxLtHY47Qt0z78/2/c14
	KTsNmvsjARv+QTyoW90ymUCp7sPNzJN8ZgmQztV4RmYkTGyRJaxJkl88EGzBmmkAcu6viKrUXTc
	THDBi6lDNmne+Poa3vK2fjY8jKK1OMH4cUIJGooJY7bBv/C9PLrjdosynn2lejsXdgza3ps2htU
	iUiAUKkT2zK/zWyuCs0VetMhJz7kLOq51hjyWBmFsIBr36/SILF+ULGmOwwiTb3whX4m6U9JNa+
	a8IJCClR5yyDbbMNqIAcTS0baYN9UBC8057wvaShBP9NigUdAFmmS/LKROEzrk4s/2QE6c++ymZ
	SUN9XlIeNKjlaGN4tKljObmLd0YpRsozBHhgKk+/4op/Zy0surA==
X-Received: by 2002:a17:90a:da85:b0:358:ed1d:2834 with SMTP id 98e67ed59e1d1-35968faa663mr9193274a91.6.1772440570036;
        Mon, 02 Mar 2026 00:36:10 -0800 (PST)
X-Received: by 2002:a17:90a:da85:b0:358:ed1d:2834 with SMTP id 98e67ed59e1d1-35968faa663mr9193247a91.6.1772440569507;
        Mon, 02 Mar 2026 00:36:09 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359034bd11fsm16177216a91.9.2026.03.02.00.36.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:36:08 -0800 (PST)
Message-ID: <3540a60d-f9a1-463f-aca2-54ccd484b5c6@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:06:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-8-fe46a9c1a046@oss.qualcomm.com>
 <rnhqwqtd66fmvmyobhrodzoa7x2etzjjh7xhqrn5hkmibms5cd@ucggzznrx7j6>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <rnhqwqtd66fmvmyobhrodzoa7x2etzjjh7xhqrn5hkmibms5cd@ucggzznrx7j6>
X-Authority-Analysis: v=2.4 cv=BI++bVQG c=1 sm=1 tr=0 ts=69a54bfa cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=e0RItjUwLU8XcxGzZmsA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: QL29CEoYqelX9Qiw-lv85DyFzQZ45GsT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NSBTYWx0ZWRfX4Socfr14olt4
 Tt8HdbbpQF4g8fC3WeSjutNvlrriFW2l+V/YFRbJ/D+BW8rZjHJ41g8OyDbPw7iBkBBxD/wDixg
 sDoBThBkFJkYoDST7k2BcpIzDzhn2S6zZgAqKT89bNQ3piPhAP+v9EFIF6CXpIvOpGvGDLN8DRu
 3UCh8UsPRNkepdf2yEU/0AlKpxDet86cjuNYcROza7I4g42T6JnowmUqnh6gnMHWlcI1DxLSG9M
 kweroMMtcf6809ez7WeEpBK04hzanTgDun9Pb8m13L17vKrRP8FHp7S9xJwupJGmBq0O8Ayl3rv
 QfZO0xG9CILc4zxlbUwjvlbC9mEGrvTmpf2zMPhxO7WUmBzKa6csLGtXfsBsOm+FNnCU7ve1GxX
 X9P+zZoTtC2WhwGggffljYQXYFCSQpM7AHmDqgovfvN679o8dMNjyMscTIbQrLiWS29HxkTkMMa
 nB7H6hV6s2fp5eupl5Q==
X-Proofpoint-ORIG-GUID: QL29CEoYqelX9Qiw-lv85DyFzQZ45GsT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020075
X-Spamd-Bar: ------
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FMI4MSFRFGBLEARY3VL4L5JJTBZHF5PD
X-Message-ID-Hash: FMI4MSFRFGBLEARY3VL4L5JJTBZHF5PD
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:18 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 08/18] accel/qda: Add per-file DRM context and open/close handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FMI4MSFRFGBLEARY3VL4L5JJTBZHF5PD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1088];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,oss.qualcomm.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 2B2CB4127E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 3:50 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:39:02AM +0530, Ekansh Gupta wrote:
>> Introduce per-file and per-user context for the QDA DRM accelerator
>> driver. A new qda_file_priv structure is stored in file->driver_priv
>> for each open file descriptor, and a qda_user object is allocated per
>> client with a unique client_id generated from an atomic counter in
>> qda_dev.
>>
>> The DRM driver now provides qda_open() and qda_postclose() callbacks.
>> qda_open() resolves the qda_dev from the drm_device, allocates the
>> qda_file_priv and qda_user structures, and attaches them to the DRM
>> file. qda_postclose() tears down the per-file context and frees the
>> qda_user object when the file is closed.
>>
>> This prepares the QDA driver to track per-process state for future
>> features such as per-client memory mappings, job submission contexts,
>> and access control over DSP compute resources.
> Start by describing the problem instead of stuffing it to the end. Can
> we use something better suited for this task, like IDR?
ack, same comment for IDR here also, sticking with xarray everywhere for QDA for
uniformity and to avoid checkpatch warnings.
>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/qda_drv.c | 117 ++++++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_drv.h |  30 ++++++++++++
>>  2 files changed, 147 insertions(+)
>>
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> index a9113ec78fa2..bf95fc782cf8 100644
>> --- a/drivers/accel/qda/qda_drv.c
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -12,11 +12,127 @@
>>  #include "qda_drv.h"
>>  #include "qda_rpmsg.h"
>>  
>> +static struct qda_drm_priv *get_drm_priv_from_device(struct drm_device *dev)
>> +{
>> +	if (!dev)
>> +		return NULL;
>> +
>> +	return (struct qda_drm_priv *)dev->dev_private;
>> +}
>> +
>> +static struct qda_dev *get_qdev_from_drm_device(struct drm_device *dev)
>> +{
>> +	struct qda_drm_priv *drm_priv;
>> +
>> +	if (!dev) {
>> +		qda_dbg(NULL, "Invalid drm_device\n");
>> +		return NULL;
>> +	}
>> +
>> +	drm_priv = get_drm_priv_from_device(dev);
>> +	if (!drm_priv) {
>> +		qda_dbg(NULL, "No drm_priv in dev_private\n");
>> +		return NULL;
>> +	}
>> +
>> +	return drm_priv->qdev;
>> +}
>> +
>> +static struct qda_user *alloc_qda_user(struct qda_dev *qdev)
>> +{
>> +	struct qda_user *qda_user;
>> +
>> +	qda_user = kzalloc_obj(*qda_user, GFP_KERNEL);
>> +	if (!qda_user)
>> +		return NULL;
>> +
>> +	qda_user->client_id = atomic_inc_return(&qdev->client_id_counter);
>> +	qda_user->qda_dev = qdev;
>> +
>> +	qda_dbg(qdev, "Allocated qda_user with client_id=%u\n", qda_user->client_id);
>> +	return qda_user;
>> +}
>> +
>> +static void free_qda_user(struct qda_user *qda_user)
>> +{
>> +	if (!qda_user)
>> +		return;
>> +
>> +	qda_dbg(qda_user->qda_dev, "Freeing qda_user client_id=%u\n", qda_user->client_id);
>> +
>> +	kfree(qda_user);
>> +}
>> +
>> +static int qda_open(struct drm_device *dev, struct drm_file *file)
>> +{
>> +	struct qda_user *qda_user;
>> +	struct qda_file_priv *qda_file_priv;
>> +	struct qda_dev *qdev;
>> +
>> +	if (!file) {
>> +		qda_dbg(NULL, "Invalid file pointer\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	qdev = get_qdev_from_drm_device(dev);
>> +	if (!qdev) {
>> +		qda_dbg(NULL, "Failed to get qdev from drm_device\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	qda_file_priv = kzalloc(sizeof(*qda_file_priv), GFP_KERNEL);
>> +	if (!qda_file_priv)
>> +		return -ENOMEM;
>> +
>> +	qda_file_priv->pid = current->pid;
>> +
>> +	qda_user = alloc_qda_user(qdev);
>> +	if (!qda_user) {
>> +		qda_dbg(qdev, "Failed to allocate qda_user\n");
>> +		kfree(qda_file_priv);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	file->driver_priv = qda_file_priv;
>> +	qda_file_priv->qda_user = qda_user;
>> +
>> +	qda_dbg(qdev, "Device opened successfully for PID %d\n", current->pid);
>> +
>> +	return 0;
>> +}
>> +
>> +static void qda_postclose(struct drm_device *dev, struct drm_file *file)
>> +{
>> +	struct qda_dev *qdev;
>> +	struct qda_file_priv *qda_file_priv;
>> +	struct qda_user *qda_user;
>> +
>> +	qdev = get_qdev_from_drm_device(dev);
>> +	if (!qdev || atomic_read(&qdev->removing)) {
>> +		qda_dbg(NULL, "Device unavailable or removing\n");
>> +		return;
> Even if it is being removed, no need to free the memory?
Right, It should still be freed.
>
>> +	}
>> +
>> +	qda_file_priv = (struct qda_file_priv *)file->driver_priv;
>> +	if (qda_file_priv) {
>> +		qda_user = qda_file_priv->qda_user;
>> +		if (qda_user)
>> +			free_qda_user(qda_user);
>> +
>> +		kfree(qda_file_priv);
>> +		file->driver_priv = NULL;
>> +	}
>> +
>> +	qda_dbg(qdev, "Device closed for PID %d\n", current->pid);
>> +}
>> +
>>  DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>>  
>>  static struct drm_driver qda_drm_driver = {
>>  	.driver_features = DRIVER_COMPUTE_ACCEL,
>>  	.fops			= &qda_accel_fops,
>> +	.open			= qda_open,
>> +	.postclose		= qda_postclose,
>>  	.name = DRIVER_NAME,
>>  	.desc = "Qualcomm DSP Accelerator Driver",
>>  };
>> @@ -58,6 +174,7 @@ static void init_device_resources(struct qda_dev *qdev)
>>  
>>  	mutex_init(&qdev->lock);
>>  	atomic_set(&qdev->removing, 0);
>> +	atomic_set(&qdev->client_id_counter, 0);
>>  }
>>  
>>  static int init_memory_manager(struct qda_dev *qdev)
>> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
>> index 2b80401a3741..e0ba37702a86 100644
>> --- a/drivers/accel/qda/qda_drv.h
>> +++ b/drivers/accel/qda/qda_drv.h
>> @@ -10,6 +10,7 @@
>>  #include <linux/list.h>
>>  #include <linux/mutex.h>
>>  #include <linux/rpmsg.h>
>> +#include <linux/types.h>
>>  #include <linux/xarray.h>
>>  #include <drm/drm_drv.h>
>>  #include <drm/drm_file.h>
>> @@ -20,6 +21,33 @@
>>  /* Driver identification */
>>  #define DRIVER_NAME "qda"
>>  
>> +/**
>> + * struct qda_file_priv - Per-process private data for DRM file
>> + *
>> + * This structure tracks per-process state for each open file descriptor.
>> + * It maintains the IOMMU device assignment and links to the legacy qda_user
>> + * structure for compatibility with existing code.
>> + */
>> +struct qda_file_priv {
>> +	/* Process ID for tracking */
>> +	pid_t pid;
>> +	/* Pointer to qda_user structure for backward compatibility */
>> +	struct qda_user *qda_user;
>> +};
>> +
>> +/**
>> + * struct qda_user - Per-user context for remote processor interaction
>> + *
>> + * This structure maintains per-user state for interactions with the
>> + * remote processor, including memory mappings and pending operations.
>> + */
>> +struct qda_user {
>> +	/* Unique client identifier */
>> +	u32 client_id;
>> +	/* Back-pointer to device structure */
>> +	struct qda_dev *qda_dev;
>> +};
>> +
>>  /**
>>   * struct qda_drm_priv - DRM device private data for QDA device
>>   *
>> @@ -52,6 +80,8 @@ struct qda_dev {
>>  	struct qda_drm_priv *drm_priv;
>>  	/* Flag indicating device removal in progress */
>>  	atomic_t removing;
>> +	/* Atomic counter for generating unique client IDs */
>> +	atomic_t client_id_counter;
>>  	/* Name of the DSP (e.g., "cdsp", "adsp") */
>>  	char dsp_name[16];
>>  	/* Compute context-bank (CB) child devices */
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
