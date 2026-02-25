Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AN9rI4kU4WlRpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 11761412226
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8C61450E2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:55:35 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 0AAED404A7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 14:17:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Ujpyutbf;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Hdt8HJF6;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9SvJd2127926
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 14:17:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ghT7JDNMf0qUDVWiQwz9lqduowwivTxtJyYYgUsqveE=; b=UjpyutbfEqKkZYGW
	i6kNlF9sQC7810SDSSgkU8qIP2h1NJNWIAo4UfV0mRnzviKkCvRAo52AoTF2bTS7
	CneBdh+Sr0XyU2zVaDbqwh9u495udpm8r++TK3HGvLUHiaNWDugOI9DATLA063uv
	LkpzZasUEP9ivAozPL1zzagcggPjxVkicPDNpziwIwuiSzI4MiJlfe8j/Yx4KKki
	srhd9JRj5Fk/2/hPWEM4x2Ph1Tpr51ftHEpOcKM1aGxVGV6vLlTZ1fmsClhU6v+1
	A1ko3K8cDD38EZJo9JpgkcsSbRaS1N3EK0YrR22Fb0ZLNHCusRdMWdoMT2zRyXdO
	SOT0hg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chexekqu2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 14:17:19 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-824a1d441e7so2917827b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 06:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772029038; x=1772633838; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ghT7JDNMf0qUDVWiQwz9lqduowwivTxtJyYYgUsqveE=;
        b=Hdt8HJF6omfoq1ZeiPNU0qM8Uisbx3oJ2+uWoB9OKzaK2egU0efttnWEwGstyNKp37
         djCZK+6icThx0XoxMcB93lY/JypSCSR+HCvJgAZ9FDK3bVlWrGfmZrF77kQh56HJl0j6
         PLEsTu0v2Zx/dcCl+JJ3eAdxQIU1EqnlRufEZRm9X1516SyAYoOIzVXb1r6RYhOAq+mN
         PL5vOqNYeJSwU2GLF7AjRg3T9i59p0EUgKz7DR2pxb7mgmRZ98kxD9WV90mZH/Mo5h3t
         dOUCf+aL2ORuaImUtBpugupHE3n2tz2OEf6sIfP2dygfMaZFcnEHXyXkzykqLBFDsHpt
         rMvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772029038; x=1772633838;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghT7JDNMf0qUDVWiQwz9lqduowwivTxtJyYYgUsqveE=;
        b=qk/C0iQocHrMFLJavbKKnN9d+AfVA+L4zFJFb6fwjwc9sQtbUzhbqdp9aBY19YS3/+
         ZKNUbC+RgBMCYBKt8WlpQuOEWHf5PQNzlmtp9NSNS8cmCEABz7aGCdYhbSHUbl4vYqDy
         jNBTtgveBAFXgMJLps2lnQlOPbJsci8z/r7g5PibkDhNMrbbgm3dn8eUP46ui7FMHM6s
         b9H0MZU0KE2zH5zfaZFdZBwzW21PdsU0HSIbylAVDGclwQ/VwQhBr5PpA1eC0UFb/bkr
         R5pLOr+KpQLrddxQK86sZhDdQiGR/jKs4aE1FOGhcIoV2/4D2CACeDDM+Xkb711T+AI7
         viRg==
X-Forwarded-Encrypted: i=1; AJvYcCXH6XxuX6wqSMwQ56Z/XkQbRpglkAUEGz1znMi5oY5/FIx7/CU1MWa3h2Gd25bvmFcWHBkRoIZlNRzX54g0@lists.linaro.org
X-Gm-Message-State: AOJu0Yy+oQsmhvH1CjcwnVwgW23/aXugBj8899iOCCV3faYT0ueVFNV/
	RBWm9Fj+5c1JAqJx3ZmC9KbVJjZLVqzZp2DKzT1r8UmCx3M7LkTpX5uIgsh8sLjwa4DZjOxX+Y6
	kSK2+pQTUs5Zcr+D2kKW42iIc7R9hUl7zEUzL/kFDKf7hTTW8/7Kcn07Gp/fifmN53llDfg==
X-Gm-Gg: ATEYQzz11ARGvAX6F4Ve5/CI2UxuucW8dIHCsjx/SNrX1u87uVjHSCKY5pkK0lxGZbY
	WZlor7S1Cp4hqA4WLE8dXA0aIESwP6TNMw9DaWilESOVgLrn6veri3C6QtA/jYWvyu/sMa930Z9
	CfD22LvY3UfC0oWeTS0rvi0oZkHYTvwxVMU/mh/9uduKG0F9F8Vp3PYTjyR4QKLkxlwoCrleYGl
	+54lRJEzLHTpRhAD1sYBTItw10E+bx8BH5dZgYD1jbM8fA4iOEDgbsi1AkjU2A8D/j98YidveQT
	7bpu3/5/WYMdex+w1X2cfGSNTuizcUpU6wPzNV8kdyyutdn9xHjSCXpJaggfl5AornH6XGhqcsX
	4WATCN0Grd+Vo/GpI3gxaOPAGbzGjzOSg0sVXsNz1xxAJ4M/GEXQ=
X-Received: by 2002:a05:6a00:2407:b0:81f:33a6:e9cd with SMTP id d2e1a72fcca58-826daa82b31mr16934504b3a.57.1772029038328;
        Wed, 25 Feb 2026 06:17:18 -0800 (PST)
X-Received: by 2002:a05:6a00:2407:b0:81f:33a6:e9cd with SMTP id d2e1a72fcca58-826daa82b31mr16934446b3a.57.1772029037741;
        Wed, 25 Feb 2026 06:17:17 -0800 (PST)
Received: from [192.168.1.5] ([171.61.227.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd641040sm13758026b3a.10.2026.02.25.06.17.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 06:17:16 -0800 (PST)
Message-ID: <5a278b02-f2ad-408b-b0ad-f2297817bd7e@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 19:47:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
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
 <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEzNiBTYWx0ZWRfXxwR2Y87pHUjh
 ZfO2cnhGstCWR7kNJ7JWhmKRgmhEYOxCaPa4ScrjEpKnakpe738yk/3jhvkJQYjPsIh7d1Lfp4T
 LAnsS3ry7kYrozEtpJpogb3tzPmjMogmStuD9dAShhD7RGu1DF9zv5yW//sxBG9yYKPepA0OAyg
 5OmsGbbcVZOKSq6gBVKGJmn6j5CMsz3FrClEQZjT+lki6T0PcQGOLLhpR4XtNmTR6pTxHWBjp5d
 q4AWtgrEULxQGhaAFqH8//sgx+NgfpHqOA04hlrVt3sXFBJkgJz+phY37wMpyo3sITTlzEFqrqu
 NIHvtQAPFoj4PQ/ehkBQJylg3nWkTNxo9BjikXhJimXz+EpyntS04gzH/bOiMqj4qVQD6zik/l7
 ch1qye7uYJhVdU6RpVRol+FqIJ1jTAZjC/1RFKFJj4KkWTcZ4N68rwjMzDGWhCMr6n3omHrZL4D
 q1yWjGF/Kimaj3NH6oQ==
X-Authority-Analysis: v=2.4 cv=V85wEOni c=1 sm=1 tr=0 ts=699f046f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=CLJ8B99oKJtQbdnoKiLypA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=p29BN9gyRe82g0miaHUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: WRkDlYzdyB5bVkUgPiS64bVkWdoeEl_q
X-Proofpoint-ORIG-GUID: WRkDlYzdyB5bVkUgPiS64bVkWdoeEl_q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_01,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250136
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LEQSAAYDYU35JW3JIFYNDH6FR74ZBA6S
X-Message-ID-Hash: LEQSAAYDYU35JW3JIFYNDH6FR74ZBA6S
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:05 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LEQSAAYDYU35JW3JIFYNDH6FR74ZBA6S/>
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
	DATE_IN_PAST(1.00)[1202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 11761412226
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDIvMjQvMjAyNiA5OjAzIEFNLCBUcmlsb2sgU29uaSB3cm90ZToNCj4gT24gMi8yMy8y
MDI2IDExOjA4IEFNLCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+PiBBZGQgaW5pdGlhbCBkb2N1bWVu
dGF0aW9uIGZvciB0aGUgUXVhbGNvbW0gRFNQIEFjY2VsZXJhdG9yIChRREEpIGRyaXZlcg0KPj4g
aW50ZWdyYXRlZCBpbiB0aGUgRFJNIGFjY2VsIHN1YnN5c3RlbS4NCj4+DQo+PiBUaGUgbmV3IGRv
Y3MgaW50cm9kdWNlIFFEQSBhcyBhIERSTS9hY2NlbC1iYXNlZCBpbXBsZW1lbnRhdGlvbiBvZg0K
Pj4gSGV4YWdvbiBEU1Agb2ZmbG9hZCB0aGF0IGlzIGludGVuZGVkIGFzIGEgbW9kZXJuIGFsdGVy
bmF0aXZlIHRvIHRoZQ0KPj4gbGVnYWN5IEZhc3RSUEMgZHJpdmVyIGluIGRyaXZlcnMvbWlzYy4g
VGhlIHRleHQgZGVzY3JpYmVzIHRoZSBkcml2ZXINCj4+IG1vdGl2YXRpb24sIGhpZ2gtbGV2ZWwg
YXJjaGl0ZWN0dXJlIGFuZCBpbnRlcmFjdGlvbiB3aXRoIElPTU1VIGNvbnRleHQNCj4+IGJhbmtz
LCBHRU0tYmFzZWQgYnVmZmVyIG1hbmFnZW1lbnQgYW5kIHRoZSBSUE1zZyB0cmFuc3BvcnQuDQo+
Pg0KPj4gVGhlIHVzZXItc3BhY2UgZmFjaW5nIHNlY3Rpb24gZG9jdW1lbnRzIHRoZSBtYWluIFFE
QSBJT0NUTHMgdXNlZCB0bw0KPj4gZXN0YWJsaXNoIERTUCBzZXNzaW9ucywgbWFuYWdlIEdFTSBi
dWZmZXIgb2JqZWN0cyBhbmQgaW52b2tlIHJlbW90ZQ0KPj4gcHJvY2VkdXJlcyB1c2luZyB0aGUg
RmFzdFJQQyBwcm90b2NvbCwgYWxvbmcgd2l0aCBhIHR5cGljYWwgbGlmZWN5Y2xlDQo+PiBleGFt
cGxlIGZvciBhcHBsaWNhdGlvbnMuDQo+Pg0KPj4gRmluYWxseSwgdGhlIGRyaXZlciBpcyB3aXJl
ZCBpbnRvIHRoZSBDb21wdXRlIEFjY2VsZXJhdG9ycw0KPj4gZG9jdW1lbnRhdGlvbiBpbmRleCB1
bmRlciBEb2N1bWVudGF0aW9uL2FjY2VsLCBhbmQgYSBicmllZiBkZWJ1Z2dpbmcNCj4+IHNlY3Rp
b24gc2hvd3MgaG93IHRvIGVuYWJsZSBkeW5hbWljIGRlYnVnIGZvciB0aGUgUURBIGltcGxlbWVu
dGF0aW9uLg0KPiBTbyBleGlzdGluZyBhcHBsaWNhdGlvbnMgd3JpdHRlbiBvdmVyIGNoYXJhY3Rl
ciBkZXZpY2UgVUFQSSBuZWVkcyB0byBiZQ0KPiByZXdyaXR0ZW4gb3ZlciBuZXcgVUFQSSBhbmQg
aXQgd2lsbCBiZSBicm9rZW4gb25jZSB0aGlzIGRyaXZlciBnZXRzDQo+IG1lcmdlZD8gQXJlIHdl
IGdvaW5nIHRvIGtlZXAgYm90aCB0aGUgZHJpdmVycyBpbiB0aGUgTGludXgga2VybmVsDQo+IGFu
ZCBub3QgZGVwcmVjYXRlIHRoZSAvY2hhciBkZXZpY2Ugb25lPyANCj4NCj4gSXMgUXVhbGNvbW0g
Z29pbmcgdG8gcHJvdmlkZSB0aGUgd3JhcHBlciBsaWJyYXJ5IGluIHRoZSB1c2Vyc3BhY2UNCj4g
c28gdGhhdCBleGlzdGluZyBhcHBsaWNhdGlvbnMgYnkgb3VyIGN1c3RvbWVycyBhbmQgZGV2ZWxv
cGVycw0KPiBrZWVwIHdvcmtpbmcgdy8gdGhlIG5ld2VyIGtlcm5lbCBpZiB0aGUgY2hhciBpbnRl
cmZhY2UgYmFzZWQNCj4gZHJpdmVyIGdldHMgZGVwcmVjYXRlZD8gSXQgaXMgbm90IGNsZWFyIGZy
b20geW91ciB0ZXh0IGFib3ZlLiANClRoYW5rcyBmb3IgcmFpc2luZyB0aGlzLCBUcmlsb2suDQoN
ClRoaXMgaXMgb25lIG9mIHRoZSBvcGVuIGl0ZW1zIHRoYXQgSSBoYXZlLiBJJ20gbm90IGV4YWN0
bHkgc3VyZSB3aGF0IHdvdWxkIGJlIHRoZQ0KYWNjZXB0YWJsZSB3YXkgZm9yIHRoaXMuwqANCg0K
QXMgeW91IG1lbnRpb25lZCwgYXBwbGljYXRpb25zIHRoYXQgcmVseSBvbiAvZGV2L2Zhc3RycGMq
IG1pZ2h0IG5vdCB3b3JrIG9uIFFEQQ0Kd2l0aG91dCBtb2RpZmljYXRpb24uDQoNCkkgd2FzIHRo
aW5raW5nIGluIHRoZSBzYW1lIGxpbmVzIGFzIHlvdSBoYXZlIG1lbnRpb25lZCBhbmTCoCBoYXZp
bmcgc29tZSBzaGltL2NvbXBhdA0KZHJpdmVyIHRvIHRyYW5zbGF0ZSBGYXN0UlBDIFVBUEkgdG8g
UURBLiBUaGUgY29tcGF0IGRyaXZlciB3b3VsZCBleHBvc2UgdGhlIGV4aXN0aW5nDQpjaGFyYWN0
ZXIgZGV2aWNlcyBhbmQgcm91dGUgdGhlIGNhbGxzIHRvIFFEQS4gVGhlIGNvbXBhdCBkcml2ZXIg
Y291bGQgYmUgYnVpbHQgdmlhIEtjb25maWcuDQoNCkhvd2V2ZXIsIEkgaGF2ZW7igJl0IGVuY291
bnRlcmVkIGFuIGV4YW1wbGUgb2Ygc3VjaCBhIFVBUEnigJF0cmFuc2xhdGlvbiBkcml2ZXIgaW4g
dGhlIGtlcm5lbA0KYmVmb3JlLCBzbyBJIHdvdWxkIHdhbnQgZ3VpZGFuY2UgZnJvbSBtYWludGFp
bmVycyBvbiB3aGV0aGVyIHRoaXMgaXMgYW4gYWNjZXB0YWJsZQ0KbW9kZWwgb3Igbm90Lg0KDQpS
ZWdhcmRpbmcgeW91ciBxdWVzdGlvbiBhYm91dCBsaWJyYXJ5LCBhbGwgdGhlIEFQSXMgZXhwb3Nl
ZCBieSBnaXRodWIvZmFzdHJwYyBsaWJyYXJ5IGFyZSBrZXB0DQp1bmNoYW5nZWQgaW4gdGVybXMg
b2YgZGVmaW5pdGlvbnMgYW5kIGV4cGVjdGF0aW9uLiBUaGUgc2FtZSBwcm9qZWN0IGNhbiBiZSBi
dWlsZCBmb3IgYm90aA0KRmFzdFJQQyBhbmQgUURBIGJhc2VkIG9uIGNvbmZpZ3VyZSBvcHRpb25z
LiBTbywgdGhlIGFwcGxpY2F0aW9ucyB1c2luZyBnaXRodWIvZmFzdHJwYyBzaG91bGQNCm5vdCBm
YWNlIGFueSBwcm9ibGVtIGlmIHRoZSBsaWJzIGlzIGJ1aWx0IHdpdGggcHJvcGVyIGNvbmZpZ3Vy
ZSBvcHRpb25zLg0KDQpJIGhhdmUgbm90ZWQgeW91ciBwb2ludCByZWdhcmRpbmcgdGhlIGRvYyBu
b3QgcHJvdmlkaW5nIGNsZWFyIGRldGFpbHMsIEkgaGF2ZSBhZGRlZCBpbnRlcmZhY2UNCmNvbXBh
dGliaWxpdHkgaW5mb3JtYXRpb24gaW4gY292ZXIgbGV0dGVyIGFuZCB3aWxsIHRyeSBwdWxsaW5n
IHRoZSBzYW1lIHRvIERvYy4NCj4NCj4gLS0tVHJpbG9rIFNvbmkNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
