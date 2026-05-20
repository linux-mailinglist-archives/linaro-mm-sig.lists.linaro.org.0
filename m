Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFlvGv/CDWr32wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:19:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D791C58F764
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:19:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D413B40983
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:19:41 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 8655640964
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:19:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ALUpjjFB;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=O2kTVmJv;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KDXvAR1798612
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:19:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjNnASAt5iqKMaT3xE7uUJEpw63hfaVPY06gYhwCG3U=; b=ALUpjjFBst8BY3aC
	gOVk9qIAjwkF0BFDiaZNf9nqmOMsjJs6YBOZjvUYoyjzKJES5I7Bp9/7wErcw+ka
	PTYeKXlYY4eWoga3fIvf3iTh2CJeSoj/e5gh3qPEzZ755lLiqL2uld+bypupgzR/
	5Jklc/hboMwP9hjsGRxAom9Y8z1w8hi0tF3293ei998qkwD7ZZ+QAh4orsZdepl5
	ztd1OxFWfW4p2FRevkhHwf6Bukfbko9l9a5ae13G1ug/Ycoh7ime1IE9ldm4XOe9
	xwxCl0VV+4rZ9WFmR3xSyBuuhTqD4MkHKBSeVhD9ncwVBi+n8mdgyxlm8jox0fPh
	zhtsoQ==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9dxu059t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:19:30 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-438a47daaf2so4481941fac.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779286769; x=1779891569; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jjNnASAt5iqKMaT3xE7uUJEpw63hfaVPY06gYhwCG3U=;
        b=O2kTVmJvnV76dNpew03dYZi+5TLob0WIOYy8cvugbtv5N0VVf745BjImtJtL55xYXe
         AXcEhWUC1DLU8jdHD1dsfl1IV/4Nyj5XB2J6jjn12gj4OF0FPv9ZQw+sFFAvV4wGzIb/
         ANUa/tvyy3Zl8hAES1DEhPRGNCl9SNr+9pSOP+ncVRol1s4wlrI5qKIE4sC2M4drQnwM
         mCuIQXcnfMG2rc+v91FferFiqCT1VsXp9qVrbqXWz/aZSdPj5ZEm5mshMQp9Q7ARVhXB
         aUgpv02MixL4ibqdyvasNrdUWsd5v516Lv985XECBNIViiyg/KFbb+X9Lab4FK7MGAhR
         nLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779286769; x=1779891569;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjNnASAt5iqKMaT3xE7uUJEpw63hfaVPY06gYhwCG3U=;
        b=RH18w0Q3rdlGBtvGFvEQitcQgzwxQVVLGPRs4IN0Zt52+omhFRXEZvcE2cTvw0BAr5
         lCgm6vCtoba8gsJEEDX5Ug8QE3z7ZDZ0HKRg6JNVMTA6iw3nW+EYEcpT6st2v4zDtYU5
         n1ypYY/fPa/dEFNCKFaV8FWtT0UDhtknzl519oCo7jlwj4m28evJnA32P5weEuRAiHsU
         jDENV0WOPuDvIFQdkTPFxNcMPszntGn99tZTGHN3xkPpIrrgWx6pmmBbf+flV+V2629v
         OZ3yWjLPBee4U8VmvhAhlyHNp3lNBGWwrE2i5caqoj7yZ+rYDxLeZoSxmjeJVt/Vxb8t
         modw==
X-Forwarded-Encrypted: i=1; AFNElJ8QKxfk2t4waxJxPwGmA3MWrStuMmLR8cRCulZNfbdj5WiJGE0u2or9TVvPUu1xFZsZb4DM0Erpmt3XCBl+@lists.linaro.org
X-Gm-Message-State: AOJu0YwvYoG7ithREoL72k/NyQSsqH/22KD3a4N84uXPa7zMT42Go6ht
	PWlZe4UZtxpupm5iTD6/+yk8poKxxGgeJCy4skxBMWvl5kRMCYH7zlwKwQ52YdAT1tz93NKNKPF
	E8H0R7oRAsmAA7/q5CL65LCaQ+aVHHOqt9uuBbHEcv2EQFCsdz0G079+QN+VCZfSOo4fiJw==
X-Gm-Gg: Acq92OEroavr/RdmN6PkWUhfZUSjwh//0Vo+a/Smuz2otCFzunJlVPQFb1Ar76B2PoU
	r+eMJ/ruc/ktSta6/QVH39e+0w0j9fj8yp083XTjxRRpf3bwtoOKeUiGyi8gLQMRarD1sNtzNBa
	RnWX156iZYaQAIkgzvMzlWab30O03knL4lsz4BDzERy1VILKVEQE4vosFRVkXw/hOwW+HbneUWK
	Xkc2lDDxrJ9dFQDGfOD0KhpZ2Q4O14Rdapimt/cESM5vv8Y/CBYzllVO0K2yoEpknuFUWD3gtKw
	UzR4H8+0nd5vF2IKTSDy7WVyg9KIqBlvBE6ZhdFyb8CMqx84eYvRIJgfTUaNnIRr9SFsSPSzYwh
	xwi+Pj36FHiv0liCme8GAc5hRUu4KLuDIolKeMuncj2nm6O2s9gTf6BOp3CrGcAQt8G2YI62Cen
	66DCUBn2e9EZs6vx8+obG+mF8kUdPJod2aTeM=
X-Received: by 2002:a05:6820:4b8c:b0:699:90a5:106b with SMTP id 006d021491bc7-69c942f73a1mr14792734eaf.24.1779286769460;
        Wed, 20 May 2026 07:19:29 -0700 (PDT)
X-Received: by 2002:a05:6820:4b8c:b0:699:90a5:106b with SMTP id 006d021491bc7-69c942f73a1mr14792713eaf.24.1779286768912;
        Wed, 20 May 2026 07:19:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164bc462sm4990268e87.45.2026.05.20.07.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:19:27 -0700 (PDT)
Date: Wed, 20 May 2026 17:19:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <gnlpw4ijwtjv43nhcv5iirhjnuc7dntx5vucdrhnxeyznyxa5x@t65o5owldu5s>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-4-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-4-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDEzOSBTYWx0ZWRfX7Sfhtow6B6QU
 N95zGjvZ2IxHhuu6gZ6jWaWYMHWzIGmF+DyPAhr+ZG7whPsrMyJp8RC7wschgaUvhOHk7WJ+x8I
 dubaR5nSMztFq0Djb+GUc+lyL8LtpwRbAXIX+DGfp7iiJ2mG9k+A5tzObzGZkBmWaXu2QSeOgrS
 1gw5y2H0DUK6EtmyROR9s8JY0qR+mK1VkqSKw2vdB/+vQsniFrqjF9iUKrOS4zxFyd0O3XW0+wv
 hZo0ztz+Y7BYlZscwJXmtzEVAW/eqPgbkQpddr/Q+DR2dV7lAMAK8j5d3hE+PL1rKBUYs8up3gM
 4kWJa5UlZ3cQde9WvCaEyoBgr9l/tE26Hsf6KqQZghlGsqyiq8Yk+5oQ1pF21cdctEZsaK3U2m/
 731MrrYyGff6cXHPrXkeV/Ph88Wqhk247baQipBuH0OpG/eaQLfCmKHj/WIXsYelkWNadPkW/3A
 aVuPIWhUkO5Iij70ODg==
X-Authority-Analysis: v=2.4 cv=Zckt8MVA c=1 sm=1 tr=0 ts=6a0dc2f2 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=cV-vn9ENGD0yosCfWX4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-GUID: CXFlt9JWLO97YcM6iIQXlxisWaeVZwYk
X-Proofpoint-ORIG-GUID: CXFlt9JWLO97YcM6iIQXlxisWaeVZwYk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 phishscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200139
X-Spamd-Bar: ---
Message-ID-Hash: ZZVDR6DM6MUIFLC5ANHHE7U2UCMJLLHK
X-Message-ID-Hash: ZZVDR6DM6MUIFLC5ANHHE7U2UCMJLLHK
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/15] accel/qda: Add compute bus for QDA context banks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZZVDR6DM6MUIFLC5ANHHE7U2UCMJLLHK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: D791C58F764
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTE6NDU6NTRBTSArMDUzMCwgRWthbnNoIEd1cHRhIHZp
YSBCNCBSZWxheSB3cm90ZToNCj4gRnJvbTogRWthbnNoIEd1cHRhIDxla2Fuc2guZ3VwdGFAb3Nz
LnF1YWxjb21tLmNvbT4NCj4gDQo+IEludHJvZHVjZSBhIGN1c3RvbSB2aXJ0dWFsIGJ1cyAocWRh
LWNvbXB1dGUtY2IpIGZvciBtYW5hZ2luZyBJT01NVQ0KPiBjb250ZXh0IGJhbmsgKENCKSBkZXZp
Y2VzIHVzZWQgYnkgdGhlIFFEQSBkcml2ZXIuDQo+IA0KPiBJT01NVSBjb250ZXh0IGJhbmtzIGFy
ZSBzeW50aGV0aWMgY29uc3RydWN0cyDigJQgdGhleSBhcmUgbm90IHJlYWwNCj4gcGxhdGZvcm0g
ZGV2aWNlcyBhbmQgZG8gbm90IGFwcGVhciBhcyBjaGlsZHJlbiBvZiBhIHBsYXRmb3JtIGJ1cyBu
b2RlDQo+IGluIHRoZSBkZXZpY2UgdHJlZS4gVXNpbmcgYSBwbGF0Zm9ybSBkcml2ZXIgdG8gcmVw
cmVzZW50IHRoZW0gd2FzDQo+IHRoZXJlZm9yZSBpbmNvcnJlY3QgYW5kIGludHJvZHVjZWQgYSBw
cm9iZS1vcmRlcmluZyByYWNlOiBkZXZpY2Ugbm9kZXMNCj4gd2VyZSBjcmVhdGVkIGJlZm9yZSB0
aGUgUlBNc2cgY2hhbm5lbCByZXNvdXJjZXMgd2VyZSBmdWxseSBpbml0aWFsaXplZCwNCj4gYW5k
IGJlY2F1c2UgcHJvYmUgcnVucyBhc3luY2hyb25vdXNseSwgdXNlci1zcGFjZSBjb3VsZCBvcGVu
IGEgQ0INCj4gZGV2aWNlIGFuZCBhdHRlbXB0IHRvIHN0YXJ0IGEgc2Vzc2lvbiBiZWZvcmUgdGhl
IHVuZGVybHlpbmcgdHJhbnNwb3J0DQo+IHdhcyByZWFkeS4NCj4gDQo+IFRoZSBxZGEtY29tcHV0
ZS1jYiBidXMgc29sdmVzIHRoaXMgYnkgYWxsb3dpbmcgdGhlIG1haW4gUURBIGRyaXZlciB0bw0K
PiBjcmVhdGUgQ0IgZGV2aWNlcyBleHBsaWNpdGx5IGFuZCB1bmRlciBpdHMgb3duIGNvbnRyb2ws
IG1ha2luZyB0aGVpcg0KPiBsaWZldGltZSBzdHJpY3RseSBzdWJvcmRpbmF0ZSB0byB0aGUgcGFy
ZW50IHFkYV9kZXYuIFRoZSBidXMgcHJvdmlkZXMNCj4gYSBkbWFfY29uZmlndXJlIGNhbGxiYWNr
IHRoYXQgY2FsbHMgb2ZfZG1hX2NvbmZpZ3VyZSgpIHNvIHRoYXQgZWFjaCBDQg0KPiBkZXZpY2Ug
Z2V0cyBpdHMgb3duIElPTU1VIGRvbWFpbiBkZXJpdmVkIGZyb20gaXRzIGRldmljZS10cmVlIG5v
ZGUsDQo+IGVuYWJsaW5nIHBlci1zZXNzaW9uIG1lbW9yeSBpc29sYXRpb24uDQo+IA0KPiBUaGUg
YnVzIHR5cGUgYW5kIHRoZSBDQiBkZXZpY2UgY29uc3RydWN0b3IgKGNyZWF0ZV9xZGFfY2JfZGV2
aWNlKSBhcmUNCj4gZXhwb3J0ZWQgZm9yIHVzZSBieSB0aGUgUURBIG1lbW9yeSBtYW5hZ2VyLg0K
PiANCj4gQSBoaWRkZW4gS2NvbmZpZyBzeW1ib2wgKERSTV9BQ0NFTF9RREFfQ09NUFVURV9CVVMp
IGlzIGludHJvZHVjZWQgYW5kDQo+IGF1dG9tYXRpY2FsbHkgc2VsZWN0ZWQgYnkgRFJNX0FDQ0VM
X1FEQSBzbyB0aGF0IHRoZSBidXMgaW5pdGlhbGlzYXRpb24NCj4gcnVucyB2aWEgcG9zdGNvcmVf
aW5pdGNhbGwgYmVmb3JlIGFueSBRREEgZGV2aWNlIHByb2Jlcy4NCj4gDQo+IEFzc2lzdGVkLWJ5
OiBDbGF1ZGU6Y2xhdWRlLTQtNi1zb25uZXQNCj4gU2lnbmVkLW9mZi1ieTogRWthbnNoIEd1cHRh
IDxla2Fuc2guZ3VwdGFAb3NzLnF1YWxjb21tLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2FjY2Vs
L01ha2VmaWxlICAgICAgICAgICAgICB8ICAxICsNCj4gIGRyaXZlcnMvYWNjZWwvcWRhL0tjb25m
aWcgICAgICAgICAgIHwgIDQgKysrDQo+ICBkcml2ZXJzL2FjY2VsL3FkYS9NYWtlZmlsZSAgICAg
ICAgICB8ICAyICsrDQo+ICBkcml2ZXJzL2FjY2VsL3FkYS9xZGFfY29tcHV0ZV9idXMuYyB8IDY4
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIGluY2x1ZGUvbGludXgv
cWRhX2NvbXB1dGVfYnVzLmggICAgIHwgMzIgKysrKysrKysrKysrKysrKysNCj4gIDUgZmlsZXMg
Y2hhbmdlZCwgMTA3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Fj
Y2VsL01ha2VmaWxlIGIvZHJpdmVycy9hY2NlbC9NYWtlZmlsZQ0KPiBpbmRleCA1OGMwOGRkNWYz
ODkuLjllZDg0M2NkMjkzZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9hY2NlbC9NYWtlZmlsZQ0K
PiArKysgYi9kcml2ZXJzL2FjY2VsL01ha2VmaWxlDQo+IEBAIC02LDQgKzYsNSBAQCBvYmotJChD
T05GSUdfRFJNX0FDQ0VMX0hBQkFOQUxBQlMpCSs9IGhhYmFuYWxhYnMvDQo+ICBvYmotJChDT05G
SUdfRFJNX0FDQ0VMX0lWUFUpCQkrPSBpdnB1Lw0KPiAgb2JqLSQoQ09ORklHX0RSTV9BQ0NFTF9R
QUlDKQkJKz0gcWFpYy8NCj4gIG9iai0kKENPTkZJR19EUk1fQUNDRUxfUURBKQkJKz0gcWRhLw0K
PiArb2JqLSQoQ09ORklHX0RSTV9BQ0NFTF9RREFfQ09NUFVURV9CVVMpICs9IHFkYS8NCg0KVWdo
LiBUaGUgcHJldmlvdXMgbGluZSBzaG91bGQgYmUgZW5vdWdoIChidXQgZG9uJ3QgdHJ1c3QgbWUp
Lg0KDQo+ICBvYmotJChDT05GSUdfRFJNX0FDQ0VMX1JPQ0tFVCkJCSs9IHJvY2tldC8NCj4gXCBO
byBuZXdsaW5lIGF0IGVuZCBvZiBmaWxlDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3Fk
YS9LY29uZmlnIGIvZHJpdmVycy9hY2NlbC9xZGEvS2NvbmZpZw0KPiBpbmRleCA0ODRkMjFmZjFi
NTUuLjJhNjFhNGRkYTA1NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9hY2NlbC9xZGEvS2NvbmZp
Zw0KPiArKysgYi9kcml2ZXJzL2FjY2VsL3FkYS9LY29uZmlnDQo+IEBAIC0zLDExICszLDE1IEBA
DQo+ICAjIFF1YWxjb21tIERTUCBhY2NlbGVyYXRvciBkcml2ZXINCj4gICMNCj4gIA0KPiArY29u
ZmlnIERSTV9BQ0NFTF9RREFfQ09NUFVURV9CVVMNCj4gKwlib29sDQo+ICsNCj4gIGNvbmZpZyBE
Uk1fQUNDRUxfUURBDQo+ICAJdHJpc3RhdGUgIlF1YWxjb21tIERTUCBhY2NlbGVyYXRvciINCj4g
IAlkZXBlbmRzIG9uIERSTV9BQ0NFTA0KPiAgCWRlcGVuZHMgb24gQVJDSF9RQ09NIHx8IENPTVBJ
TEVfVEVTVA0KPiAgCWRlcGVuZHMgb24gUlBNU0cNCj4gKwlzZWxlY3QgRFJNX0FDQ0VMX1FEQV9D
T01QVVRFX0JVUw0KPiAgCWhlbHANCj4gIAkgIEVuYWJsZXMgdGhlIERSTS1iYXNlZCBhY2NlbGVy
YXRvciBkcml2ZXIgZm9yIFF1YWxjb21tJ3MgSGV4YWdvbiBEU1BzLg0KPiAgCSAgVGhpcyBkcml2
ZXIgcHJvdmlkZXMgYSBzdGFuZGFyZGl6ZWQgaW50ZXJmYWNlIGZvciBvZmZsb2FkaW5nIGNvbXB1
dGF0aW9uYWwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvcWRhL01ha2VmaWxlIGIvZHJp
dmVycy9hY2NlbC9xZGEvTWFrZWZpbGUNCj4gaW5kZXggZGJlODA5MDY3YThiLi40MjQxNzZmNjUy
YTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvYWNjZWwvcWRhL01ha2VmaWxlDQo+ICsrKyBiL2Ry
aXZlcnMvYWNjZWwvcWRhL01ha2VmaWxlDQo+IEBAIC04LDMgKzgsNSBAQCBvYmotJChDT05GSUdf
RFJNX0FDQ0VMX1FEQSkJOj0gcWRhLm8NCj4gIHFkYS15IDo9IFwNCj4gIAlxZGFfZHJ2Lm8gXA0K
PiAgCXFkYV9ycG1zZy5vDQo+ICsNCj4gK29iai0kKENPTkZJR19EUk1fQUNDRUxfUURBX0NPTVBV
VEVfQlVTKSArPSBxZGFfY29tcHV0ZV9idXMubw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2Nl
bC9xZGEvcWRhX2NvbXB1dGVfYnVzLmMgYi9kcml2ZXJzL2FjY2VsL3FkYS9xZGFfY29tcHV0ZV9i
dXMuYw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLmM1OWQ5
NzdlOTI0ZA0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvcWRhL3FkYV9j
b21wdXRlX2J1cy5jDQo+IEBAIC0wLDAgKzEsNjggQEANCj4gKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wLW9ubHkNCj4gKy8vIENvcHlyaWdodCAoYykgUXVhbGNvbW0gVGVjaG5v
bG9naWVzLCBJbmMuIGFuZC9vciBpdHMgc3Vic2lkaWFyaWVzLg0KPiArI2luY2x1ZGUgPGxpbnV4
L2RldmljZS5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2luaXQuaD4NCj4gKyNpbmNsdWRlIDxsaW51
eC9vZi5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPg0KPiArI2luY2x1ZGUgPGxp
bnV4L3FkYV9jb21wdXRlX2J1cy5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gKw0K
PiArc3RhdGljIGludCBxZGFfY2JfYnVzX2RtYV9jb25maWd1cmUoc3RydWN0IGRldmljZSAqZGV2
KQ0KPiArew0KPiArCXJldHVybiBvZl9kbWFfY29uZmlndXJlKGRldiwgZGV2LT5vZl9ub2RlLCB0
cnVlKTsNCj4gK30NCj4gKw0KPiArY29uc3Qgc3RydWN0IGJ1c190eXBlIHFkYV9jYl9idXNfdHlw
ZSA9IHsNCj4gKwkubmFtZSA9ICJxZGEtY29tcHV0ZS1jYiIsDQo+ICsJLmRtYV9jb25maWd1cmUg
PSBxZGFfY2JfYnVzX2RtYV9jb25maWd1cmUsDQo+ICt9Ow0KPiArRVhQT1JUX1NZTUJPTF9HUEwo
cWRhX2NiX2J1c190eXBlKTsNCj4gKw0KPiArc3RhdGljIHZvaWQgcmVsZWFzZV9xZGFfY2JfZGV2
aWNlKHN0cnVjdCBkZXZpY2UgKmRldikNCj4gK3sNCj4gKwlvZl9ub2RlX3B1dChkZXYtPm9mX25v
ZGUpOw0KPiArCWtmcmVlKGRldik7DQo+ICt9DQo+ICsNCj4gK3N0cnVjdCBkZXZpY2UgKmNyZWF0
ZV9xZGFfY2JfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKnBhcmVudF9kZXZpY2UsIGNvbnN0IGNoYXIg
Km5hbWUsDQo+ICsJCQkJICAgIHU2NCBkbWFfbWFzaywgc3RydWN0IGRldmljZV9ub2RlICpvZl9u
b2RlKQ0KPiArew0KPiArCXN0cnVjdCBkZXZpY2UgKmRldjsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+
ICsJZGV2ID0ga3phbGxvY19vYmooKmRldik7DQo+ICsJaWYgKCFkZXYpDQo+ICsJCXJldHVybiBF
UlJfUFRSKC1FTk9NRU0pOw0KPiArDQo+ICsJZGV2LT5yZWxlYXNlID0gcmVsZWFzZV9xZGFfY2Jf
ZGV2aWNlOw0KPiArCWRldi0+YnVzID0gJnFkYV9jYl9idXNfdHlwZTsNCj4gKwlkZXYtPnBhcmVu
dCA9IHBhcmVudF9kZXZpY2U7DQo+ICsJZGV2LT5jb2hlcmVudF9kbWFfbWFzayA9IGRtYV9tYXNr
Ow0KPiArCWRldi0+ZG1hX21hc2sgPSAmZGV2LT5jb2hlcmVudF9kbWFfbWFzazsNCj4gKwlkZXYt
Pm9mX25vZGUgPSBvZl9ub2RlX2dldChvZl9ub2RlKTsNCj4gKw0KPiArCWRldl9zZXRfbmFtZShk
ZXYsICIlcyIsIG5hbWUpOw0KPiArDQo+ICsJcmV0ID0gZGV2aWNlX3JlZ2lzdGVyKGRldik7DQo+
ICsJaWYgKHJldCkgew0KPiArCQlwdXRfZGV2aWNlKGRldik7DQo+ICsJCXJldHVybiBFUlJfUFRS
KHJldCk7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIGRldjsNCj4gK30NCj4gK0VYUE9SVF9TWU1C
T0xfR1BMKGNyZWF0ZV9xZGFfY2JfZGV2aWNlKTsNCj4gKw0KPiArc3RhdGljIGludCBfX2luaXQg
cWRhX2NiX2J1c19pbml0KHZvaWQpDQo+ICt7DQo+ICsJaW50IGVycjsNCj4gKw0KPiArCWVyciA9
IGJ1c19yZWdpc3RlcigmcWRhX2NiX2J1c190eXBlKTsNCj4gKwlpZiAoZXJyIDwgMCkgew0KPiAr
CQlwcl9lcnIoInFkYS1jb21wdXRlLWNiIGJ1cyByZWdpc3RyYXRpb24gZmFpbGVkOiAlZFxuIiwg
ZXJyKTsNCj4gKwkJcmV0dXJuIGVycjsNCj4gKwl9DQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsN
Cj4gK3Bvc3Rjb3JlX2luaXRjYWxsKHFkYV9jYl9idXNfaW5pdCk7DQo+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L3FkYV9jb21wdXRlX2J1cy5oIGIvaW5jbHVkZS9saW51eC9xZGFfY29tcHV0
ZV9idXMuaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLjkw
YmYyNDhjNzI4NQ0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvcWRhX2Nv
bXB1dGVfYnVzLmgNCj4gQEAgLTAsMCArMSwzMiBAQA0KPiArLyogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb25seSAqLw0KPiArLyoNCj4gKyAqIENvcHlyaWdodCAoYykgUXVhbGNv
bW0gVGVjaG5vbG9naWVzLCBJbmMuIGFuZC9vciBpdHMgc3Vic2lkaWFyaWVzLg0KPiArICovDQo+
ICsNCj4gKyNpZm5kZWYgX19RREFfQ09NUFVURV9CVVNfSF9fDQo+ICsjZGVmaW5lIF9fUURBX0NP
TVBVVEVfQlVTX0hfXw0KPiArDQo+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+DQo+ICsNCj4g
Ky8qDQo+ICsgKiBDdXN0b20gYnVzIHR5cGUgZm9yIFFEQSBjb21wdXRlIGNvbnRleHQgYmFuayAo
Q0IpIGRldmljZXMNCj4gKyAqDQo+ICsgKiBUaGlzIGJ1cyB0eXBlIGlzIHVzZWQgZm9yIG1hbnVh
bGx5IGNyZWF0ZWQgQ0IgZGV2aWNlcyB0aGF0IHJlcHJlc2VudA0KPiArICogSU9NTVUgY29udGV4
dCBiYW5rcy4gVGhlIGN1c3RvbSBidXMgYWxsb3dzIHByb3BlciBJT01NVSBjb25maWd1cmF0aW9u
DQo+ICsgKiBhbmQgZGV2aWNlIG1hbmFnZW1lbnQgZm9yIHRoZXNlIHZpcnR1YWwgZGV2aWNlcy4N
Cj4gKyAqLw0KPiArI2lmZGVmIENPTkZJR19EUk1fQUNDRUxfUURBX0NPTVBVVEVfQlVTDQo+ICtl
eHRlcm4gY29uc3Qgc3RydWN0IGJ1c190eXBlIHFkYV9jYl9idXNfdHlwZTsNCj4gKw0KPiArc3Ry
dWN0IGRldmljZSAqY3JlYXRlX3FkYV9jYl9kZXZpY2Uoc3RydWN0IGRldmljZSAqcGFyZW50X2Rl
dmljZSwgY29uc3QgY2hhciAqbmFtZSwNCj4gKwkJCQkgICAgdTY0IGRtYV9tYXNrLCBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm9mX25vZGUpOw0KPiArI2Vsc2UNCj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0
IGRldmljZSAqY3JlYXRlX3FkYV9jYl9kZXZpY2Uoc3RydWN0IGRldmljZSAqcGFyZW50X2Rldmlj
ZSwNCj4gKwkJCQkJCSAgY29uc3QgY2hhciAqbmFtZSwgdTY0IGRtYV9tYXNrLA0KPiArCQkJCQkJ
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUpDQo+ICt7DQo+ICsJcmV0dXJuIEVSUl9QVFIo
LUVOT0RFVik7DQo+ICt9DQo+ICsjZW5kaWYNCj4gKw0KPiArI2VuZGlmIC8qIF9fUURBX0NPTVBV
VEVfQlVTX0hfXyAqLw0KPiANCj4gLS0gDQo+IDIuMzQuMQ0KPiANCj4gDQoNCi0tIA0KV2l0aCBi
ZXN0IHdpc2hlcw0KRG1pdHJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
