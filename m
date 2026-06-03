Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tRAuHAVJKWp/TgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B17668B64
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=ODNZo4nN;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=FhFEGegY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0714340A71
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:22:44 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 18836409EE
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 13:25:55 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653DM7BS1755365
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 13:25:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UhFwddlTFY09oF6cy7oYeNVke04XX3DNuQUC89hSDWQ=; b=ODNZo4nNljDaEEsi
	1dIvaUauNqUhkE5Fr31T394FGhgER/rCJQmyJBP1E+y1HnlSMLtKzu4uVtE+5e0A
	GTGjk5Z3FWKAq11NdlAKHmno2R+/mnw0barEmTPEZ/d4dKsWpSz2iBND3GpY/8q1
	+W/x/yk7omU/OqmyDBntXvKs4JPTMJcN6AVR/o08V4KgVkKl49lO5ce0uauypmdi
	aNiimcbLZTdoJBZAlKgUtz4Rp4CX6PtW00AFT/5gRhHhRobXcLfGEDIU1ZFdKfpI
	lXu8ClEOdxoMM0Jr+LoK89idmcGNfciwX+l9ud9ovRuYF4ZptNkozDdSMIi2tYLm
	0lTb5g==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejff01h0a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 13:25:54 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-59eb8eafe1cso6133738e0c.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 06:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780493154; x=1781097954; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UhFwddlTFY09oF6cy7oYeNVke04XX3DNuQUC89hSDWQ=;
        b=FhFEGegY7nMjru+HYdu35W2ywSDIQdQt3OrKI4Czxwur8I0FF11ORSvg+Szr7wUcw+
         pxrIhQpTlq4WaaHejGK6fnrSaVAJ3twWYlzq23+IgRX8m9kN6Xdcdhx4Trtn3V9AGJs2
         5r6g2zVHQQpkf7dxmxoJDi0J90r83+lk3/htnWfJbGc21E9dHEtKl94/dlTr0cXBMAa/
         E4puipWCojZZUA78g3+LHlduAxT68+0qhUSLxMkLoFc1Koxml6FdIM+ie9P5Xxj38cxf
         9EhqvwyXTFuOSdlcsdTEQIJ3bRsWYCt0BlqDKVTi4o5dzLOdHEC9YXME4bSlFJRHZK6/
         YvCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780493154; x=1781097954;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UhFwddlTFY09oF6cy7oYeNVke04XX3DNuQUC89hSDWQ=;
        b=LFGuGJgQGx+LNgWZac+akF9VDf6uVWv6OyI/nHU8TsQpx613/Tjg7ZbWAEYO5mneri
         e0bgmohD4uOOK+71BQFdrJ11q7m5OH1ktJULG8SLm7lVIU/ifwpbBrYMxbafkQiSigC5
         2WQ/LuQ+AUXlxSx5Vspn6emwJV0XN0y1FSr+kM8XQNDWy4f1yqMn6M6rIlCBVEaq2yUq
         9NLl2uvYdEMtQiMS29cZ9ya6EsG3gppnqIW4ckeu3CjXdAdx9SNe61LBoaC6rYZb5y6Q
         MnbG/d0H3Z3wvOP1lSoWAGwq0HLONeCvdlcujtYbvwzK5ospihSAwwBjjRRWCsOhQBax
         S89Q==
X-Forwarded-Encrypted: i=1; AFNElJ+RBrX2Ofui11afXGJ/x2MSiHUuCYX5XET7FppWQ42idzytCdM4WPknX2gCfCE2d3VFzraHJd7842JbEdeJ@lists.linaro.org
X-Gm-Message-State: AOJu0YyzfDE8as4ST6JUFp7HiTdCwY7P3T8Olfk2up9wp0vYZzCGJsA9
	CiUqTzBuUDYXzcQSNjWEcKTNvCN8eEiW9M2f+Kfa4j5+wHJtMXXjOPwOm2RUWO5nH/xcKUXGuT0
	8BnyNZGvnw/nqpjxI/HLiSrDmLctSJHcjnR8OPGHx8tvWmfOcpCq+WO9L9c/WMkfVGS+WFw==
X-Gm-Gg: Acq92OH/9x+EqpDViahlnQYr5hqybJy00zYqg5qlobASk1WIXJgKF5QfJMyClA1Y6Co
	1v2ocvoRUYLyhw6bbCgqEBNjZZJMZg6euC6c+UO+Ma2VWuohIT34X2Z18j7PQDiahZ0AzENPukZ
	x4Te4kJZZaDDpMOrKOv1Ys39KgYhjhxFjEAKskArOAgSg98vzXVYrSxn1aJmb9OjpBLPiCs6joY
	Ye1qHcoStDNhlU0H6+qSyGID4q28ukmVSq1m+TGtojSjZRi+401vfyeU69LtMhrYcOx+cTP2yEL
	2JN1sW7yrM+IAbIC13qH6wpo4Quzm5cUIa+GF4ZRvT+U6unt0C3OYLr+Bvlf7YJQqoEhtZcGwFk
	33zJH3rr1JFkso/RUJYLPRitsXR7PQ74POlSWIgvdvqojtACjpN4I1Fmlykb+UjM97M9X3uCJwA
	tyK++QmKLvoQ4pzvgtOAFFg8lw7F7gW+GX7AmL22eF6shgTA==
X-Received: by 2002:a05:6122:46a2:b0:59b:7fbd:39f8 with SMTP id 71dfb90a1353d-5a6e852c12bmr1998153e0c.10.1780493153850;
        Wed, 03 Jun 2026 06:25:53 -0700 (PDT)
X-Received: by 2002:a05:6122:46a2:b0:59b:7fbd:39f8 with SMTP id 71dfb90a1353d-5a6e852c12bmr1998093e0c.10.1780493153309;
        Wed, 03 Jun 2026 06:25:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b990d37sm653480e87.70.2026.06.03.06.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 06:25:52 -0700 (PDT)
Date: Wed, 3 Jun 2026 16:25:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <t4dcxboazzy6mxtbcjntcccxl6gc5oxjaituzyoijy2i6wfq3n@hxcrglx7bftk>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-4-b2d984c297f8@oss.qualcomm.com>
 <gnlpw4ijwtjv43nhcv5iirhjnuc7dntx5vucdrhnxeyznyxa5x@t65o5owldu5s>
 <587b450c-c527-4c6a-b48b-8a7a266bd673@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <587b450c-c527-4c6a-b48b-8a7a266bd673@oss.qualcomm.com>
X-Proofpoint-GUID: WQvKQrGjuzI-VbeqyE8DKv5UB2pIbjlu
X-Proofpoint-ORIG-GUID: WQvKQrGjuzI-VbeqyE8DKv5UB2pIbjlu
X-Authority-Analysis: v=2.4 cv=LYwMLDfi c=1 sm=1 tr=0 ts=6a202b62 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=w4rcs2q4Tst63B3XjnYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEyNyBTYWx0ZWRfX6j/azLqI82Lc
 rJ4H8liMQto1b7tcQvmCOonL5g1vjXY04pGk/Y51p135bvObWf6HHX3jhWtElzKDDxEpCPOGQ0p
 mwOgoUA3CICcXzuEx+v7pBpW0hwMy+FhTLOsd6EavKVUcUA1ifYxeuyseOpQQAr43cWocJzJ5gv
 3lfUBiKFXFfj569b+dN4Lw5qiBUMGzd/OpmGtyP54MR46mdT08c7GZ57LzJVZDnEfzUpTIQpCDq
 eRXC6gg+/pSzrWjVapEMXFlp4fdsiyW8VpLf/FoSr1hQwYIqjvE66672OBtCzjTdAlZ697m54WH
 RJYEPDt0Ip3ZETeZNyM6kGNAPI1X53hy+Zmj7J5vi354qJ+W4jHmoQnRRIhAPQ5jQxbdZbYCqU2
 p2Lrm8u/7vVjPdGaFijXWLONrSsPFRduFUxtoKpm5e2H1kzx3l1Z6xuXe9uMY1ELailwLMRIo1l
 BE/z1+cBmSNQ1ccy2bw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030127
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6DEK2H5OJSVL42TKL75ID2NJ6QZSBMAL
X-Message-ID-Hash: 6DEK2H5OJSVL42TKL75ID2NJ6QZSBMAL
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:24 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/15] accel/qda: Add compute bus for QDA context banks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6DEK2H5OJSVL42TKL75ID2NJ6QZSBMAL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[165];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:ekansh.gupta@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8B17668B64

T24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMTA6NTg6MDlBTSArMDUzMCwgRWthbnNoIEd1cHRhIHdy
b3RlOg0KPiBPbiAyMC0wNS0yMDI2IDE5OjQ5LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOg0KPiA+
IE9uIFR1ZSwgTWF5IDE5LCAyMDI2IGF0IDExOjQ1OjU0QU0gKzA1MzAsIEVrYW5zaCBHdXB0YSB2
aWEgQjQgUmVsYXkgd3JvdGU6DQo+ID4+IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRh
QG9zcy5xdWFsY29tbS5jb20+DQo+ID4+DQo+ID4+IEludHJvZHVjZSBhIGN1c3RvbSB2aXJ0dWFs
IGJ1cyAocWRhLWNvbXB1dGUtY2IpIGZvciBtYW5hZ2luZyBJT01NVQ0KPiA+PiBjb250ZXh0IGJh
bmsgKENCKSBkZXZpY2VzIHVzZWQgYnkgdGhlIFFEQSBkcml2ZXIuDQo+ID4+DQo+ID4+IElPTU1V
IGNvbnRleHQgYmFua3MgYXJlIHN5bnRoZXRpYyBjb25zdHJ1Y3RzIOKAlCB0aGV5IGFyZSBub3Qg
cmVhbA0KPiA+PiBwbGF0Zm9ybSBkZXZpY2VzIGFuZCBkbyBub3QgYXBwZWFyIGFzIGNoaWxkcmVu
IG9mIGEgcGxhdGZvcm0gYnVzIG5vZGUNCj4gPj4gaW4gdGhlIGRldmljZSB0cmVlLiBVc2luZyBh
IHBsYXRmb3JtIGRyaXZlciB0byByZXByZXNlbnQgdGhlbSB3YXMNCj4gPj4gdGhlcmVmb3JlIGlu
Y29ycmVjdCBhbmQgaW50cm9kdWNlZCBhIHByb2JlLW9yZGVyaW5nIHJhY2U6IGRldmljZSBub2Rl
cw0KPiA+PiB3ZXJlIGNyZWF0ZWQgYmVmb3JlIHRoZSBSUE1zZyBjaGFubmVsIHJlc291cmNlcyB3
ZXJlIGZ1bGx5IGluaXRpYWxpemVkLA0KPiA+PiBhbmQgYmVjYXVzZSBwcm9iZSBydW5zIGFzeW5j
aHJvbm91c2x5LCB1c2VyLXNwYWNlIGNvdWxkIG9wZW4gYSBDQg0KPiA+PiBkZXZpY2UgYW5kIGF0
dGVtcHQgdG8gc3RhcnQgYSBzZXNzaW9uIGJlZm9yZSB0aGUgdW5kZXJseWluZyB0cmFuc3BvcnQN
Cj4gPj4gd2FzIHJlYWR5Lg0KPiA+Pg0KPiA+PiBUaGUgcWRhLWNvbXB1dGUtY2IgYnVzIHNvbHZl
cyB0aGlzIGJ5IGFsbG93aW5nIHRoZSBtYWluIFFEQSBkcml2ZXIgdG8NCj4gPj4gY3JlYXRlIENC
IGRldmljZXMgZXhwbGljaXRseSBhbmQgdW5kZXIgaXRzIG93biBjb250cm9sLCBtYWtpbmcgdGhl
aXINCj4gPj4gbGlmZXRpbWUgc3RyaWN0bHkgc3Vib3JkaW5hdGUgdG8gdGhlIHBhcmVudCBxZGFf
ZGV2LiBUaGUgYnVzIHByb3ZpZGVzDQo+ID4+IGEgZG1hX2NvbmZpZ3VyZSBjYWxsYmFjayB0aGF0
IGNhbGxzIG9mX2RtYV9jb25maWd1cmUoKSBzbyB0aGF0IGVhY2ggQ0INCj4gPj4gZGV2aWNlIGdl
dHMgaXRzIG93biBJT01NVSBkb21haW4gZGVyaXZlZCBmcm9tIGl0cyBkZXZpY2UtdHJlZSBub2Rl
LA0KPiA+PiBlbmFibGluZyBwZXItc2Vzc2lvbiBtZW1vcnkgaXNvbGF0aW9uLg0KPiA+Pg0KPiA+
PiBUaGUgYnVzIHR5cGUgYW5kIHRoZSBDQiBkZXZpY2UgY29uc3RydWN0b3IgKGNyZWF0ZV9xZGFf
Y2JfZGV2aWNlKSBhcmUNCj4gPj4gZXhwb3J0ZWQgZm9yIHVzZSBieSB0aGUgUURBIG1lbW9yeSBt
YW5hZ2VyLg0KPiA+Pg0KPiA+PiBBIGhpZGRlbiBLY29uZmlnIHN5bWJvbCAoRFJNX0FDQ0VMX1FE
QV9DT01QVVRFX0JVUykgaXMgaW50cm9kdWNlZCBhbmQNCj4gPj4gYXV0b21hdGljYWxseSBzZWxl
Y3RlZCBieSBEUk1fQUNDRUxfUURBIHNvIHRoYXQgdGhlIGJ1cyBpbml0aWFsaXNhdGlvbg0KPiA+
PiBydW5zIHZpYSBwb3N0Y29yZV9pbml0Y2FsbCBiZWZvcmUgYW55IFFEQSBkZXZpY2UgcHJvYmVz
Lg0KPiA+Pg0KPiA+PiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS00LTYtc29ubmV0DQo+ID4+
IFNpZ25lZC1vZmYtYnk6IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29tbS5j
b20+DQo+ID4+IC0tLQ0KPiA+PiAgZHJpdmVycy9hY2NlbC9NYWtlZmlsZSAgICAgICAgICAgICAg
fCAgMSArDQo+ID4+ICBkcml2ZXJzL2FjY2VsL3FkYS9LY29uZmlnICAgICAgICAgICB8ICA0ICsr
Kw0KPiA+PiAgZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUgICAgICAgICAgfCAgMiArKw0KPiA+
PiAgZHJpdmVycy9hY2NlbC9xZGEvcWRhX2NvbXB1dGVfYnVzLmMgfCA2OCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4+ICBpbmNsdWRlL2xpbnV4L3FkYV9jb21wdXRl
X2J1cy5oICAgICB8IDMyICsrKysrKysrKysrKysrKysrDQo+ID4+ICA1IGZpbGVzIGNoYW5nZWQs
IDEwNyBpbnNlcnRpb25zKCspDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2Vs
L01ha2VmaWxlIGIvZHJpdmVycy9hY2NlbC9NYWtlZmlsZQ0KPiA+PiBpbmRleCA1OGMwOGRkNWYz
ODkuLjllZDg0M2NkMjkzZiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9hY2NlbC9NYWtlZmls
ZQ0KPiA+PiArKysgYi9kcml2ZXJzL2FjY2VsL01ha2VmaWxlDQo+ID4+IEBAIC02LDQgKzYsNSBA
QCBvYmotJChDT05GSUdfRFJNX0FDQ0VMX0hBQkFOQUxBQlMpCSs9IGhhYmFuYWxhYnMvDQo+ID4+
ICBvYmotJChDT05GSUdfRFJNX0FDQ0VMX0lWUFUpCQkrPSBpdnB1Lw0KPiA+PiAgb2JqLSQoQ09O
RklHX0RSTV9BQ0NFTF9RQUlDKQkJKz0gcWFpYy8NCj4gPj4gIG9iai0kKENPTkZJR19EUk1fQUND
RUxfUURBKQkJKz0gcWRhLw0KPiA+PiArb2JqLSQoQ09ORklHX0RSTV9BQ0NFTF9RREFfQ09NUFVU
RV9CVVMpICs9IHFkYS8NCj4gPiANCj4gPiBVZ2guIFRoZSBwcmV2aW91cyBsaW5lIHNob3VsZCBi
ZSBlbm91Z2ggKGJ1dCBkb24ndCB0cnVzdCBtZSkuDQo+IEkgd2FzIHNlZWluZyBidWlsZCBmYWls
dXJlcyBpZiBJIGRvbid0IGFkZCB0aGlzLiBUb29rIGl0IGFzIGEgcmVmZXJlbmNlDQo+IGZyb20g
aG9zdDF4IGRyaXZlciBhbmQgcmVjZW50IGlyaXMgcGF0Y2guPg0KDQpSZXZpZXdlZC1ieTogRG1p
dHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPg0KDQoNCi0t
IA0KV2l0aCBiZXN0IHdpc2hlcw0KRG1pdHJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
