Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNDkLDIU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D5D41217F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8652A450C5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:09 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 04C3A3F70C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:39:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=fL9LfETQ;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Yul0b4eT;
	spf=pass (lists.linaro.org: domain of trilokkumar.soni@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=trilokkumar.soni@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O3L29w889972
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:39:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KILrgs7d74mR23o2eIzLn2FfkB9mDLXK+R0lgubWZsM=; b=fL9LfETQS8Vb/1Xl
	jdJ4gaRZDr8qxINFPzWmOkXDWsoNl64GHSh9uT6icfJfocI69K0govoY/vLEp9Uj
	CQ3+L2j1FpVamayYUciAA9KGg62JWBozxHfk8SZbhbl1bLTFg/z38s/DdkOZcjJn
	5F2lgvkmXObVr7Fely/OBCEQ6muoRdp/b7rrIgJFNgm4HYUvZ7ym23a1w13eE029
	DBhTaP8LkwlQm0/cEo9+EYVXYE2lBZbZvufVvhaIuxbOFKiXazG4rEReRG7Bnt3o
	+NlKc6YJODZ0CbjBOnMqDYETH8RoXITeca4ByZl7YG3cq2nH9inbwRfto+EhaSkO
	BHurCg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj8afkt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:39:40 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2bda35eab74so614480eec.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771904380; x=1772509180; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KILrgs7d74mR23o2eIzLn2FfkB9mDLXK+R0lgubWZsM=;
        b=Yul0b4eTWypL1MurV00UQmxhalAkWXw8+q3wZoUFtDkqt4u9GPWHkkZCvZwM3KiQoH
         aaxS+sAtxP16Y025bJkSRYKFl+Q8FRWoPbFY1KtuSyKDKmE5msRhv1117gv3L5xHhK8S
         6X4aFpvHMAyNVzL7T25y4S7Y5fXqmhlFldtemuL5nK8Mvgp6XnLbm+pfCF9Kh5JFD/P9
         VXRO39uzJjKxiLcl41fNzdhzGvqPKgrJK48i0CASBylWrYkLobuzal0SQwcE9fMD2xpO
         aXbnkmG9wbVPniuNQdikcEKhm2EXFLVdu4MsTO/wncA9DS/AnHuIqRKeRyJ4R3c5Oh9q
         fL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771904380; x=1772509180;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KILrgs7d74mR23o2eIzLn2FfkB9mDLXK+R0lgubWZsM=;
        b=am0N5z0SKY+ftrXEiGAVXVXFT8lXk7tzC3zZZ9m84rojjK3+2euPFoJKpazO0MBWqD
         gMdXuGP+XiGXKITgwqkEdXbR//KB50mizr4enU1nGdLfd71KyTOpJeSMPNMyn8WHtIeM
         GOS6+5hQviJ2DGlg1e+z7E7edp99ABauN2qXhBHdD74fcq9t35y822XhfW8gDJ9DIl17
         JwarMTCLZ7Icte6OtY90BL0pxexFF4vsbLA1exNz+0wP2hFh6ESIcnxFLB1rPkcULKnz
         nCuNufaHS9qX+g172PnTANif5KypbQpYiulW2oL/ohET1WAcOn32hXNApd0jvnYjpjIb
         khcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXJXsc2KD3+C4sTr/ui6TxHUFUd4rbOCg4QPshF7uXYkfpyy3esH1RqkXczCgQWc6TpCV72SVwuahRY7aj@lists.linaro.org
X-Gm-Message-State: AOJu0YyGFaAOqCU2fDorGJEX1cUyf4rDvdx+gHCyQk6gjL4yWdMEa46u
	7OzFhCiYXiG4G9i8ZvpZ4afKfpaE5hsppqJP7z/Fgo33HrKxgemx9lp7R3nEgP+unQOLSdVCbaX
	Smurm6YBR9UYkY7FXsbAzh2cSXlTEu3MjjGFduEf4eH20BZDaLG37wyQ2aouTk2GoaWv+6A==
X-Gm-Gg: ATEYQzwVy+Ih4A7FNRyEauLJXIyivuIH8f8wPptPF5H2P6iYsPttXbQSofwZpj1B/SX
	fedJDEgLszbQUbyNFgGUobk8Gru+Aikjvg3jeHUdBShLXjUJ0U43GhC1JRwn7hqwEWHlwevmP6s
	BkMT7gQpusDJhSqNQvVYNFdZXdrpbQg/RtldrsUgW0GI3vQFk4Lz2wqtrImKrIc+pKj5HWlMwop
	8Zik/TTyJ1iodF+hkhizTs5wdHKJuUJ+ptB9Dn9FgMvn7GknKwXn1VXgKut0Y3bvEpSOwhvOuxc
	gO0X9wYfHHCfkPk/OQ0ztXAWqb2jRq+Li0Y8pwj4YTOktAp7nVWt3TF4G/JSB07eG6EathY4FYP
	KTZDpCHy6Tw6sVsKZ0ncICPFT8MbxD+sbxYndI6V0iT7CowV8dy2XscA=
X-Received: by 2002:a05:7300:d4cb:b0:2b7:f2e5:11a4 with SMTP id 5a478bee46e88-2bd7b89c2b7mr4123700eec.16.1771904379567;
        Mon, 23 Feb 2026 19:39:39 -0800 (PST)
X-Received: by 2002:a05:7300:d4cb:b0:2b7:f2e5:11a4 with SMTP id 5a478bee46e88-2bd7b89c2b7mr4123681eec.16.1771904379070;
        Mon, 23 Feb 2026 19:39:39 -0800 (PST)
Received: from [192.168.86.165] ([76.176.48.107])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7da47778sm6089378eec.6.2026.02.23.19.39.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 19:39:38 -0800 (PST)
Message-ID: <cac08f2f-73b0-4629-898a-1e24840910fd@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 19:39:37 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
Content-Language: en-US
From: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>
In-Reply-To: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyOSBTYWx0ZWRfX8FhpUwELdGhV
 5c4YeVTifGNoMR4dOSfQhQDhJHyZfmPwefGXGJijQof2ynYNaVKOg0uPVgcOkaTuZbth+x48HPi
 S0vz7m9qBuJppzmpLOQ5q948HsuIVxAtDFEsF4AoaA+mtBlLuUTKyE6FXJQe/o8zS0W6xfFpetj
 joK8p4kDbe9KYQl7mxz/EBMYoNoI8yfIorYoVFN09w7QSMoAUCoThiVxFAv6oLOqtd+zwrYP52o
 44ou/8Q1tWqcBg95CFN1Jg7TQoEawtMNOBKZhnQvp7aDiBx913d8j3lQl3O3p7mOE5oV090OEPQ
 TVoh45iC23Esb5CJE0CTdVHq0wXd/GvSIe35uW7jgflaKioK2qkZmOrrd6rB4/j7p2uM5KR5Dee
 05bhc6YABSdzuQTfWgke+XKmJQapntpmfWVEQFvCOjj582dDZSG91WTjoRAGx1bmlPDigF3ujjn
 O/31z8sIEPSRFUFzqag==
X-Proofpoint-GUID: i-IRnMCEWWOTHePUxbIwRvcYOSX747Mr
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699d1d7c cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=lsoD3MMNObdLvy1227ExmA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=aquNE3KFXbjoS9wDYHgA:9 a=QEXdDO2ut3YA:10 a=0lgtpPvCYYIA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: i-IRnMCEWWOTHePUxbIwRvcYOSX747Mr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240029
X-Spamd-Bar: ---
X-MailFrom: trilokkumar.soni@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LGFWBYAOEUIT54EHYYXCEURJI5W255TQ
X-Message-ID-Hash: LGFWBYAOEUIT54EHYYXCEURJI5W255TQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:59 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/18] accel/qda: Introduce Qualcomm DSP Accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LGFWBYAOEUIT54EHYYXCEURJI5W255TQ/>
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
	DATE_IN_PAST(1.00)[1237];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[trilokkumar.soni@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 74D5D41217F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2/23/2026 11:08 AM, Ekansh Gupta wrote:
> * Userspace Interface: While the driver provides a new DRM-based UAPI,
>   the underlying FastRPC protocol and DSP firmware interface remain
>   compatible. This ensures that DSP firmware and libraries continue to
>   work without modification.


This is not very clear and it is not explained properly in the 1st patch
where you document this driver. It doesn't talk about how older
UAPI based application will still work without any change
or recompilation. I prefer the same old binary to work w/ the new
DRM based interface without any changes (I don't know how that will be possible)
OR if recompilation + linking is needed then you need to provide the wrapper library.

---Trilok Soni
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
