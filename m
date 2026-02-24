Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAYMKSEU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 606CA412171
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73C5245088
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:52 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 0A19A3F61F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:33:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=MpsmBFFf;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="K6j/t29U";
	spf=pass (lists.linaro.org: domain of trilokkumar.soni@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=trilokkumar.soni@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O3L36Z1396762
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:33:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cw5oOYysEVaaTcVwIagtgtb1acPAUP70RqJhekAP7Zs=; b=MpsmBFFfOVHfn/pk
	Gg4QcxaaZhK4U4eeUQBi7urMNKOvTDwSza1oS2UzSLIHLFy6kA7W7NleuM4sn6pl
	M4x4z6TjyHPZgg4ou/d8h8DibM3bcqEdiwQu0FeW7LgGxLih+lLSrErJxFh5rbzX
	joWxCc85TVP2OaJiKwZxzYkKcrm6kl8YijJF6ZMr0v7LH8HP2qqM6Z0p5yvz6YbR
	XjQe9GyKv84EeXPKNaDjKC9RSLpcMfINW3laTZ+VfF97K/O+0n8fHtp5xtJi4egN
	BJECOTqR8p85DNs0EfpaZlyZzaGKFuO8gdAkbKig/BVcURryr6jTJC7DzqVx83T0
	W1ob0w==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtx09k0k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:33:14 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-12711967e0eso7024354c88.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771903994; x=1772508794; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cw5oOYysEVaaTcVwIagtgtb1acPAUP70RqJhekAP7Zs=;
        b=K6j/t29UICG9MTE7aMFY95RqTKZQQQ49zRYpCoZqRLP/AtphAt5aJnLIF+1cX8VMea
         ZhaKapkQLtGyUiHE6LTf4sQNxQApilbb2JWsz/nUXMtQ3P3QE+qwdsvIsYtGhQheymYh
         TKVRKpHrgdZzktlQoOUt4rdnrskudXI81vGzOydBQfdtLVmIxEUi3EKT1TKJEULfE2kg
         uDT67aGTQPMEnOGvbuvK6ERQv3CfaisF6MJyJJKlBJYW1fBTkSe6TteUadaTPDHOuoyy
         llKLdq5bVdusDt5AStSCCIYefORK9//wvEXfUD6A+rBfylf8rffihZWoZkPQXk5xuIHM
         xGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771903994; x=1772508794;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cw5oOYysEVaaTcVwIagtgtb1acPAUP70RqJhekAP7Zs=;
        b=M+ACpWbKNe9w4HM3eYn6md2nySbmudPBrp7Vy9qSQhy/6gscvlqyFF+nUFVUKAlOL0
         UNu/0lStppNjyR08Ea0BeFhiqW4SmfL1ADXoVNhCE3SSGDQB4XrBPJqpKe3n4aRl4Rel
         Ri+3lM9yu03n+Pxlt5k9CagGuG0AdIBPpUYnRZYB7ox3iV99rPgNvGtYUxs8M12tTBIr
         ssCD/4z91oXO6btKvWC5v8eVwkcBbUD76nkaAmsC9hM2CN/bYUnyoQLzKJUkCNriLmMs
         5DIkgfp7UkVdYsapDJDKHHcVw+uiLd1t8E+lJNk3W5KCPbKgVyryY+UO+uxDjmXOHYSY
         porg==
X-Forwarded-Encrypted: i=1; AJvYcCUrOnrg9LKz2sy5UTWkFc+NlILFY6ZWiDSopnHKOpTAVF4Pfh6arNPfJzhWNcbMaVg9Mb4My39CL7o0lUxG@lists.linaro.org
X-Gm-Message-State: AOJu0YytFCBkAuwxiKNVoLmV7FRiBRcVDGopC6NaLt/SgdNYt0b3fZeD
	VUnwiPP1Txp/vdUO6ghDzg+BJ//GxUwUNJgG7des/BlIixAxOGrLjR7dpMK4iHovhtMOk2tT3ni
	Ppg/jUazee9ai+q/oWmYdbF5twPY5pd5M0YkAul0MsfR1vAYVR9NSwNRsL0o3kCgoVW3UrA==
X-Gm-Gg: AZuq6aIAXky+hkKuGBp77PkFT5HkNad1MLjMYWBSbrFBcXPFHe72/Nhs0diiDwxJbtT
	/6XWMksbOxNfqUIC/14oP5MN1mtuJW8ua0LLGBLx0prQvf79cbOprBaj0ZheMv9yOh+MnOe+iW5
	2+K6uvWGUjSphQhrJwIl00w3YdcQb6X++M8WgLvuFQ5y7GEyqaDImJSo9e72pRGWyqCMXhEpvDx
	3jkHQ5iVFdOA4brBIde6jlyLp8V5870mU0DlfKALXXOYQsVxsXXug15tGszy+zMGDzkACdrRTU6
	rfLDGvlqdQFaepFsg1DSzLT1lu2eIdqpSL/7mja3rfgf3SswpegfnMHk1C2oe2eHTgKSAq0ecF3
	+JD+Wge2hKIY0NEnUjZ6mWQ3RASyoiKR4uvDzz1+dMQMynUomet4yI4c=
X-Received: by 2002:a05:7022:4387:b0:121:9f05:c4c2 with SMTP id a92af1059eb24-1276ad18ec5mr3365910c88.23.1771903994105;
        Mon, 23 Feb 2026 19:33:14 -0800 (PST)
X-Received: by 2002:a05:7022:4387:b0:121:9f05:c4c2 with SMTP id a92af1059eb24-1276ad18ec5mr3365882c88.23.1771903993530;
        Mon, 23 Feb 2026 19:33:13 -0800 (PST)
Received: from [192.168.86.165] ([76.176.48.107])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af20fc8sm10325680c88.6.2026.02.23.19.33.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 19:33:12 -0800 (PST)
Message-ID: <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 19:33:10 -0800
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
 <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
Content-Language: en-US
From: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>
In-Reply-To: <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: IalbQD95py_zTBVSnrKQiEXjD2A3wzO3
X-Authority-Analysis: v=2.4 cv=euvSD4pX c=1 sm=1 tr=0 ts=699d1bfa cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=lsoD3MMNObdLvy1227ExmA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=88Pab4rnIKjo3RbOS5oA:9 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: IalbQD95py_zTBVSnrKQiEXjD2A3wzO3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyOCBTYWx0ZWRfX39xklOy4GURk
 KI8ffydJXb0f+UxtGb6tDVdRgGtUIHNM7CdfyngZfrhtD6AQaq3Q8NI7gXrSzek/lzT0T90F0PJ
 s85oqXttowA5s2qiINxZvjtgiclamu5PtfS3UkXDUXXHzzk0/xQRF1ZRElIOZ5/WLR+J4S+rOjR
 1e055zoVXegPBcagX3rlQXT7zEF4wIogox6W/quwqbWIDTby64PuKCeSgksiwGrjBKgg6eQfeEF
 Ywyt80eUi8CHC5hS/N0BAxS+tNRtucQG0DDlkgnYjjGqk21KsfF+y5IY8ruMvr3WEKQjvDNGq/j
 c4URTBQoGswtD8G2YaVN3CAB5HfBLZQCH3FtyG3yk1VkAqe4I6yNN2FGkQdMxfk161vYbplkita
 RvjgJ0dJyhmbIniY7PuOKbxxuVLirjBkKWY5VfDwtSk2ktzQR+YX6X+tDNn8JAxQnlRU4hgZzc3
 N6oW9iPeRoVKteUnT+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 impostorscore=0 phishscore=0 clxscore=1011 suspectscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240028
X-Spamd-Bar: ----
X-MailFrom: trilokkumar.soni@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QRW7SDGEJL5EHC3Z3M2O7CGP7A25C7S7
X-Message-ID-Hash: QRW7SDGEJL5EHC3Z3M2O7CGP7A25C7S7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:58 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QRW7SDGEJL5EHC3Z3M2O7CGP7A25C7S7/>
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
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 606CA412171
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2/23/2026 11:08 AM, Ekansh Gupta wrote:
> Add initial documentation for the Qualcomm DSP Accelerator (QDA) driver
> integrated in the DRM accel subsystem.
> 
> The new docs introduce QDA as a DRM/accel-based implementation of
> Hexagon DSP offload that is intended as a modern alternative to the
> legacy FastRPC driver in drivers/misc. The text describes the driver
> motivation, high-level architecture and interaction with IOMMU context
> banks, GEM-based buffer management and the RPMsg transport.
> 
> The user-space facing section documents the main QDA IOCTLs used to
> establish DSP sessions, manage GEM buffer objects and invoke remote
> procedures using the FastRPC protocol, along with a typical lifecycle
> example for applications.
> 
> Finally, the driver is wired into the Compute Accelerators
> documentation index under Documentation/accel, and a brief debugging
> section shows how to enable dynamic debug for the QDA implementation.

So existing applications written over character device UAPI needs to be
rewritten over new UAPI and it will be broken once this driver gets
merged? Are we going to keep both the drivers in the Linux kernel
and not deprecate the /char device one? 

Is Qualcomm going to provide the wrapper library in the userspace
so that existing applications by our customers and developers
keep working w/ the newer kernel if the char interface based
driver gets deprecated? It is not clear from your text above. 

---Trilok Soni
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
