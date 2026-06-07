Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CqsWKV1KKWqBTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C398B668CB9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=But72Gez;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=LS7COF6V;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E527F40A8B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:28:27 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 239953F960
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 21:17:02 +0000 (UTC)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657JMCxe927092
	for <linaro-mm-sig@lists.linaro.org>; Sun, 7 Jun 2026 21:17:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b7j6fWH2ZTuBoYf3DikwUXDF
	crJUfkjfuq65I6UYILE=; b=But72Gezh3J8O2kC7pcCgCeUO5B83TzWPdicivQA
	g19bqR3eLMsg6WosHQ36cxQOtkV5o6n+puHlydTYJg9M+usFF2y/WDRnVMD/m5tC
	LI4wPKcHTMp5c+znAZb4hadOrDuF1f60I6rywu0fRAkeKosyfnwZd9Uxr9HHTDfW
	KwRXI8Xq1Xnr7nDD0TVtDmCQLFeb04rNMSgc4ZAwJ8OoalbIu330DN5gPgPmsbZa
	RSKO85OmfXjzkldAeL90tkekubBWeWcWRwQv6CEt6YLnpTotwTGNzIuU+MUT/vYP
	8eyF/eliV3HLq6qYlVZMJ2ptEHT30V8N/QOm0w4exF9mDw==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emcadvgvw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Jun 2026 21:17:01 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-59ec77e0184so3147674e0c.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Jun 2026 14:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780867020; x=1781471820; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b7j6fWH2ZTuBoYf3DikwUXDFcrJUfkjfuq65I6UYILE=;
        b=LS7COF6Vh7sEFGstOzSgigWacsXqSEIpZoyNvIjmRtEHnefVf9Y9BPF3avNWjzcviH
         1VGcc8DrpjVZRBY8G8CMCVp+MYmogWoykA8d1urcO4l+RvRit4h8+RDa6YIvN56jdhwY
         9Zk16GsDk4Azy/qTXP+1MeJhsiDMEPrvZj+Ms/qMXC51IldCFUeG7fKRkGJGkiF/YZk/
         f8zvVm0s2zPQMSWfRNbOyuVYTgKiaW3imVy9OeDXar0DocP/IrA11NElv3Ai4ifiR9d/
         5qqD0uAcHAvjjW8wAaHwf2KofgrmWe8TnwNcSidXh4WdiqtJ+vgtK4BBg7U+xBIwrs6/
         cnwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780867020; x=1781471820;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b7j6fWH2ZTuBoYf3DikwUXDFcrJUfkjfuq65I6UYILE=;
        b=ObvmnuCP01OE+4uh/iTSRUFZCJkns/JpqVu2bCLzW/n3gEgMTPeagPlojxlmXUYYYU
         Mi/xjjt7rg00PsfDXg/VhjovLsW0nwWyBiT1zdn0SEtcB9PFahKJCLPYSvMROV3/NYXC
         jnz40WEcypbDZEpr1PCD7tIQvyVipQcvEYdPJBuzueC/GZ0kRAmYcYjdXDqFyraSkqjq
         1xlaivUmXwYrZjWA2brDbbS3UaAoiVcQDsyW6llgV1+46l2xRNXO3pJ71lwCfnrr/4BA
         4hhTB9N707slPsXZNZjVpr8TUpmH0Q04NsnVAa1xy7mRmdo3gqzuQnIfqhUlBGKfwK+N
         G8ww==
X-Forwarded-Encrypted: i=1; AFNElJ+Hp/cZphe2nXY58gkK282/G/UTVs6s69GYSWKBOq6c8ZqRK3qp+BGh510JV2LtL3XdDRKCsiRW2VH3LGPT@lists.linaro.org
X-Gm-Message-State: AOJu0YxnSFlxwzIwgZ1vevulDXV8wqba5CR6un7rvbRa3mAV0eg58PO+
	P5WdVbJF6a0MYKf4WTo3cKMHRFiSinKMcJDG1YhNE7E+GcpHfHI3a3SkGA+DJo57nFFt7mp8buT
	x5+oP9oF511nXtKJh6XuImmgAZKkQpvCo4Rs7ebCD0yTXzUCeNd7emg64KAQuBUCEnf9KyQ==
X-Gm-Gg: Acq92OE+YhKRQSfTgJWNqRIwtigTKStWmfSA3YoYWijAWm2erC9mBmkJx9d0NQEoKqY
	a105bIZQkQucAJePbi1pCU1fHiFGf46yXf9kdD3gMYLN8H8ejq3sB57N9qtXDzlAd0Tp5XoDukb
	1FHm0HEfwip6anEJX0ldM3EK1ejDMH9bir7w/cMzCMZsS1L8bh+2cz9YcXrq69oL0B1cqEZvf6G
	mtrWBszGctF3nNiXD9eUid8NWRYZgtZSn4+Nwy81z74P1d0IuMoYBlZAYLqcNYnMLVMWQKFniMC
	jraMedN2SA9EAORHwx87f3ofOpNivz96CicvgYdW5jCqntwUEcmUAJAk3QHKjt9kU00eA8qqnQP
	Foyck2c6dnixXfWq17biUoyd2iA59edge/ThQOYg/aBuwXayaj/ToaBOc/tCqMpYn6QxO62j/Ld
	F/67/CbtH4kWtkgEsLPQ4zcobj5acmMZ7g9U161bSYtQoEMg==
X-Received: by 2002:a05:6102:4191:b0:634:a573:c097 with SMTP id ada2fe7eead31-6fef36392d5mr4964752137.13.1780867020068;
        Sun, 07 Jun 2026 14:17:00 -0700 (PDT)
X-Received: by 2002:a05:6102:4191:b0:634:a573:c097 with SMTP id ada2fe7eead31-6fef36392d5mr4964739137.13.1780867019635;
        Sun, 07 Jun 2026 14:16:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b9040fesm3273761e87.31.2026.06.07.14.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 14:16:58 -0700 (PDT)
Date: Mon, 8 Jun 2026 00:16:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <5gz4m3mfsnlwmyfiqtl34rgt7krgo546l6kslux2ibyinep3td@zs7xjxrk557o>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-13-b2d984c297f8@oss.qualcomm.com>
 <w44qzw2ryg7bpbte3hegopmtkfjd2gby532rdjarm4i3tylpv2@2rmruincfdgc>
 <568987b0-6f54-4b51-b1c0-416435e3f564@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <568987b0-6f54-4b51-b1c0-416435e3f564@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=DIa/JSNb c=1 sm=1 tr=0 ts=6a25dfcd cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=DtFIhfJECZ_mmoY6xYkA:9
 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: 8pnfUZbbjrY2gXOM-NkGQnsyMSrZDwSs
X-Proofpoint-ORIG-GUID: 8pnfUZbbjrY2gXOM-NkGQnsyMSrZDwSs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIxNCBTYWx0ZWRfX7ud6RUH5eMce
 y/0ODEERlUXikniXerxZxpcUSHsd+7UqGU/ec2eNTwKtJ4+7FJe/I1c+0crUAacOnOPghoVnOqo
 V5SeCLYCCuOW8oKC9H+WgL+oxpcpH4zKP4Av0DFLmVazB1XuSjmBX+YvOEuTe1e8HeYD9/Pyq7/
 ZVEaikweHBHrRrh6cK+Zslj4CmuduY76qp3RfptpncmnrjUrJ+08Mpu8jVAYf95CPeolokYsqgf
 BfiDlpbhaCZTtOgjQvKR4EQmObKnDjQJtBIUGJ7+vZWLrs9ew6buKBP5DD7pvfjrPU275WavAKB
 JQKRHtuUlC9VFt+kr0lC0JZGTLneZaKvF4VKc4pD27u0wnsi0e0pQjo9U65Yy3NJd5qzw8TzB/y
 ysu0gImd/qfqBJV2P1oW23AjGi54aJWBxgWXeSPrabhl4E9BnpAEygWqB1nJyy3cXvpgJiPegct
 o53jR8uwV/QgJ1F72TQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606070214
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UWA5KRK7EEKAJIFKUF234OYE2W3K53A6
X-Message-ID-Hash: UWA5KRK7EEKAJIFKUF234OYE2W3K53A6
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/15] accel/qda: Add DSP process creation and release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UWA5KRK7EEKAJIFKUF234OYE2W3K53A6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[62];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ekansh.gupta@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,oss.qualcomm.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C398B668CB9

On Thu, Jun 04, 2026 at 10:47:13AM +0530, Ekansh Gupta wrote:
> On 20-05-2026 19:30, Dmitry Baryshkov wrote:
> > On Tue, May 19, 2026 at 11:46:03AM +0530, Ekansh Gupta via B4 Relay wrote:
> >>  
> >> +/**
> >> + * qda_ioctl_init_create() - Create a DSP process
> >> + * @dev: DRM device structure
> >> + * @data: User-space data (struct drm_qda_init_create)
> >> + * @file_priv: DRM file private data
> >> + *
> >> + * Return: 0 on success, negative error code on failure
> >> + */
> >> +int qda_ioctl_init_create(struct drm_device *dev, void *data, struct drm_file *file_priv)
> >> +{
> >> +	return fastrpc_invoke(FASTRPC_RMID_INIT_CREATE, dev, data, file_priv);
> > 
> > Where is INIT_CREATE_ATTR, which you described earlier?
> INIT_CREATE_ATTR is used while `sc` creation so the DSP considers the
> request is coming with some attributes, the ioctl functions are going to
> be the same in both the cases, so keeping it unchanged and the decision
> is taken while `sc` is getting created.>

Ack, I missed it earlier.


-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
