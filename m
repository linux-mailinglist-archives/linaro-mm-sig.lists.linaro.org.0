Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AL5iG80Z4Wn3pAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:18:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEC1412839
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:18:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05AE544776
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:04 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 3EEBA3F7EE
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 09:08:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Ls3MwxnS;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=SMmEDEXR;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227exGc2524299
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 09:08:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gwaj2fAAVlaePOzG7WDXhDqR0zvBqc8L7FKmuItcwFw=; b=Ls3MwxnSvG7BIlnK
	IyfnLH5p9oe0dLepe1a+nqOGmpRu/4qG+sSO2gKmIHFKo06/ya1XPUOlwIW8eJLo
	2pI6ZrmU7TWboPLUzkOpLJrZS0MdecFq3rnqNKndUzd3HTHAzh2h05tEBXCHKNWw
	UUnXHYIFMOHVnoduZQXFCNyXoMdMckQOumOzGjKlJMap5hlsoeJjDo95nd5KKVrk
	MLS5arA2twyVRrIQrypnewUMTD/4e7RD6eerC/2c4QVVBBTiAfeeZg5qDvJoZUCv
	4ZHwYUF9OM8jLqjubqvJqSVdZEqjaym+yMXm0R4xenGrRwgqPN/2Bum3YHPUdqNR
	Hf4F2A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmgbatp1e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 09:08:50 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c70eb09daefso2507536a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 01:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772442530; x=1773047330; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gwaj2fAAVlaePOzG7WDXhDqR0zvBqc8L7FKmuItcwFw=;
        b=SMmEDEXRDJeWX/Q6RP48GM/oGn3sq4pzKkgyZpNCJSQNqWuzUtW5mV/TiYB406SraH
         O3T6UW5uQwXEzYv8Ty40T5aQhtjKTq6EShFU35BGY9Vu6nypgjSXEMuFVymxawWNYihV
         kebQgNfJ8XaMJY1fXLGnmolBTnyYI2Rnr7gugf265NmZ6OrXn0qCLvrSwxz6w/yUStD3
         dV73jxSxZlvK9+X4ai8QDORWqERe7EiViKN65DfC3PqsdH0O69Ps8VYR0qEWBsCptcEk
         ADEdSTL+4FhtIMNoIGWlS6eutzFHVHNFReSk2d2rYncDcrGaWD9eVq2ghhiSxOQTrl6O
         ZjfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772442530; x=1773047330;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gwaj2fAAVlaePOzG7WDXhDqR0zvBqc8L7FKmuItcwFw=;
        b=j3oftJDURzwrOTzw+PMgcTyDCEqVFza6foOIKwWbWp1iBFU6Fn9AsYyGQrzCsNLPLx
         CMcnPdXUEB01C5diPy7hKh30P3nXty4xTtJEgoLu5NSUyVZXvvzhFHahLzHIykzYt+nS
         pvf+CesqGYVmY/79wAJFp+OomA7rBHp6RHIvJaNbeThx8sjKg38ceETQkTxYBO3V09Pw
         L2PzawYEMDRpcMRyVGIMaUrA5sdYGzrxfvWXmVgmPotIi8sgiWVeOBXdTgrAV+gT74wh
         ys4w5nptIP9whCnWvAHOyo6LwZz89vkXtdCIcdSWUNtgpwbiGAi55tVeuF9uLdQLraeS
         tILg==
X-Forwarded-Encrypted: i=1; AJvYcCXhfvFe0POpBCCiQIHIGkYP2znPCNMxFUKfXa0fhqFjSGfZ7HN+r+y3yzru4bE1ay0FK0khA551FfWi9Hn0@lists.linaro.org
X-Gm-Message-State: AOJu0YxvVzlUw1d//64d96UAPdKX+rnQrzk3spGdITTOsix6/0gJgL3S
	cCg5FmFl4/oh2Qg+z5bgjabrtePVm2+J5JWjnbymC/BbavhYKLXomBYeVNEDWEBN2x62KiwY7NT
	HEVbbsg11gmjKRqKno9y8uNUk7nG0PFfDYOQM8RbeXM3x9gvmqewRCpGxaIcNelJEvqjLmQ==
X-Gm-Gg: ATEYQzyGHI5vqz2lwLWCTESs2TyjVqQ+dt5c/cVbLcx4gtcdtMbPm1re6vgydd5N7Xb
	95pBABsvVfGotfOg/xygTfcr6GU6ABm8Q2wkjclQhNtS7j3DB885ZQcT5MnRVChGZXuykIeBj6Y
	f3O2wbxf/P1LdGzKBmswwgkbyVQsMUdBQe964Uo0hKKsi+18P2Em2A1xr/hjE5nSI2XhHg1yTwy
	klS5YiuFnZ8rvJdB42aA8VLg28WA4KZezkGBABSQ1EycCDUfvxwwDEvxHB+8Ab/Kll5Muh/1SuH
	x+Gy7eTHHrVPISuQayVGeOVJEONIj+XHVP7NglDbw0z1A0om1nKAfRPYduHlWD+6pfqY/0ro2+g
	S9Ld7ql9/PJEQKVjsors/c/u6awBtKaMM2Aw+sq5j5I7hVvn2OQ==
X-Received: by 2002:a05:6a00:22d2:b0:81f:5238:5560 with SMTP id d2e1a72fcca58-8274d93af23mr10970997b3a.13.1772442529573;
        Mon, 02 Mar 2026 01:08:49 -0800 (PST)
X-Received: by 2002:a05:6a00:22d2:b0:81f:5238:5560 with SMTP id d2e1a72fcca58-8274d93af23mr10970955b3a.13.1772442529070;
        Mon, 02 Mar 2026 01:08:49 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739ff1c9esm13696576b3a.32.2026.03.02.01.08.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 01:08:48 -0800 (PST)
Message-ID: <a46bd6ea-ec33-431a-bcc2-1ade0b40c5ce@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:38:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-11-fe46a9c1a046@oss.qualcomm.com>
 <d620fb9b-3e52-412c-b687-4b464615430e@amd.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <d620fb9b-3e52-412c-b687-4b464615430e@amd.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3OCBTYWx0ZWRfX7BGSBbqiREWM
 g1qvn+FouQSQZVVGfRxnaUD22k4Uu5J4MWwbMLpqdhKsA1UGvWh9OPl5iqJenYVdi4KpfMmdFXD
 G1ln9lbax7x7tzaGov54Hxks3zW5nkAEEiW8auolxNemIrdq5VZIW2HQ66fyFaHS5+Aq0pCYgoB
 ij8F3cSDwVYHJjfo3oY4zdSqtYKKPsBT0iTxGf68w8WVi9K960/oErtqf+QZN9Ck0ZSg1TIEPPU
 yfSQxdjW56bcRmlnxSX4ia/YVY/twh0juJx2840q6wJjd4Lv7KqO1u57UVTA5sFM/jxh4zhTf9v
 QwO3M9KmijnNDgCtBJL3BU04Me47x/3rq0g9lcgMy89HJ6OOnsA6qtY/4yblwBq2nb8fg8EFwMg
 EWCDGanf2nUVyzynuCn1yTkNez3qtEZXJYorhIn/vw/NuxCwNGUbtNAQeoAt0xgLB7E7T1fB4SA
 CadRQLLcERcIlS0fLIQ==
X-Authority-Analysis: v=2.4 cv=QfVrf8bv c=1 sm=1 tr=0 ts=69a553a2 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=ukUgU1k7PXLouMuqi7QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: NNozOiKBuCzEMX03mprrHqa5Z8__k-3h
X-Proofpoint-GUID: NNozOiKBuCzEMX03mprrHqa5Z8__k-3h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020078
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YMFQ3YWZMKBOA4G56ZPS3QUUZ5TRIUKV
X-Message-ID-Hash: YMFQ3YWZMKBOA4G56ZPS3QUUZ5TRIUKV
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:21 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] accel/qda: Add GEM_CREATE and GEM_MMAP_OFFSET IOCTLs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YMFQ3YWZMKBOA4G56ZPS3QUUZ5TRIUKV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1088];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: 3BEC1412839
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDIvMjQvMjAyNiAyOjM1IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAy
LzIzLzI2IDIwOjA5LCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+IC4uLg0KPj4gK2ludCBxZGFfaW9j
dGxfZ2VtX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsIHN0
cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2KQ0KPj4gK3sNCj4+ICsgICAgICAgc3RydWN0IGRybV9x
ZGFfZ2VtX21tYXBfb2Zmc2V0ICphcmdzID0gZGF0YTsNCj4+ICsgICAgICAgc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpnZW1fb2JqOw0KPj4gKyAgICAgICBpbnQgcmV0Ow0KPj4gKw0KPj4gKyAgICAg
ICBnZW1fb2JqID0gcWRhX2dlbV9sb29rdXBfb2JqZWN0KGZpbGVfcHJpdiwgYXJncy0+aGFuZGxl
KTsNCj4+ICsgICAgICAgaWYgKElTX0VSUihnZW1fb2JqKSkNCj4+ICsgICAgICAgICAgICAgICBy
ZXR1cm4gUFRSX0VSUihnZW1fb2JqKTsNCj4+ICsNCj4+ICsgICAgICAgcmV0ID0gZHJtX2dlbV9j
cmVhdGVfbW1hcF9vZmZzZXQoZ2VtX29iaik7DQo+PiArICAgICAgIGlmIChyZXQgPT0gMCkNCj4+
ICsgICAgICAgICAgICAgICBhcmdzLT5vZmZzZXQgPSBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIo
JmdlbV9vYmotPnZtYV9ub2RlKTsNCj4+ICsNCj4+ICsgICAgICAgZHJtX2dlbV9vYmplY3RfcHV0
KGdlbV9vYmopOw0KPj4gKyAgICAgICByZXR1cm4gcmV0Ow0KPiBZb3Ugc2hvdWxkIHByb2JhYmx5
IHVzZSBkcm1fZ2VtX2R1bWJfbWFwX29mZnNldCgpIGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgdGhp
cy4NCj4NCj4gT3RoZXJ3aXNlIHlvdSBhbGxvdyBtbWFwKCkgb2YgaW1wb3J0ZWQgb2JqZWN0cyB3
aGljaCBpcyBub3QgYWxsb3dlZCBhdCBhbGwuDQpUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMsIENo
cmlzdGlhbi4gSSdsbCByZWFkIG1vcmUgYWJvdXQgdGhpcyBhbmQgZml4IGFzIHBlciB5b3VyIHN1
Z2dlc3Rpb24uDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
