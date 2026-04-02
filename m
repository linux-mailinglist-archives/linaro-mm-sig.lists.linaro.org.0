Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAevHd1j5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF7C431854
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E92E40536
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:35:24 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 543E13F7FB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 08:41:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="BJt44dr/";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=VbED1blO;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63278nsX2798842
	for <linaro-mm-sig@lists.linaro.org>; Thu, 2 Apr 2026 08:41:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0IbQWlYWo+noHc0aenssJgU60HYSp3RE6rMEPE72jcg=; b=BJt44dr/mmxhctc2
	iVXAVEtKBlF+i/g+M9vvEmNxo4Z91vH1GAOtvUGvc+9Ap1pgGiHArCj3JhSU4tdO
	1LbBr8Uzc/86RUIaUXhjZKdvo2UV8AucXHW6EsWOWa56WnYxoygbCyeZ9fX/U2+f
	RVEeX7qEcWBsRhef46gCHcLxnHmYrEJ73umyG6Oz/p5Ic2te8BKSNGId9hbClOoj
	IMw99rg+ZDanloFIP1H5A+RiDcfBkLPgsKoMu89veT/gvq+Arpuot8W35yhMhTcr
	5x075IQ/Ny3eqx4ahGfKvTVIp0SvCCRwQoWLObPsjLtc9D6HwwXc2aqF1n+g2fkJ
	80Lfng==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d96hk36xu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 08:41:53 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2b24cd2e2b3so6312235ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 01:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775119313; x=1775724113; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0IbQWlYWo+noHc0aenssJgU60HYSp3RE6rMEPE72jcg=;
        b=VbED1blOVdRJqtYqVzr7Q/5tWnpvLZA9zbh4zrUrkGcV10uXxjXQmcVnaA8hvRLgrY
         JK8oTZXfx8McEPHHVi5wKInQTFgSKH6tCwyDBgcI9BiEzY8+C4yUfizlVw2QLZ3YZHmj
         4OoA2CPzQ3+IAh9JOfNk390zmHq5xJeDkQKyP0YyA2EB6BcvzrPi3qw+pG6p2YNQgfCV
         Fafulur5BVgdQfsi+P+BaMcBtCCovhFINWBJsushIipkAsgwSdyeQRABgAsRKJh43tWL
         u7/hxTEDRrfFstssYxoKyn1uNJEt441PJTcqbQLMZ6K0STM63RNqHKv6CtWA5+KSb1wo
         tu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775119313; x=1775724113;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0IbQWlYWo+noHc0aenssJgU60HYSp3RE6rMEPE72jcg=;
        b=qAS+X+nwxrHHrBxCvTsWTsXJP6XGoLy9XEuo4G7A+k5BUWljBbv3rhtNAQkpTIuRR7
         SnZCWyJFQFF9sYqyU6THlOSsQ2gK0XXLr1MY7A3HSf2MDMjZfrGdW3DMDZZiAqdMZZMX
         uUzJm219VVgKClJKiD0mEpvVqrzouMuqse2s4Ok4dikpo0o5RpzLO1z87YYJUVbNtTzT
         cF8duwVow95JFYHPTIULM84fjnCxFImIYBvtjwQuSbazmemn6aVDuFg/s5FbjUAbKaNp
         CwKqeRghLosPO7+b/VVXRbiNeeKknXvDywIyP69L20lwkSnazQRHsaMPBepfkLblAL6b
         f+tQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfciqiI3MDMxCQNJ3PnTCgl4RlWmqciNAL4YZiFEk54D5iSjt6925/3AUzLgVRxy1jmsTfb9E0+mFfYBQm@lists.linaro.org
X-Gm-Message-State: AOJu0YxWaLxF5y1x0tvh2RGLRPJKZ/iBuiOEnihSP+J7+9xXNU42Y5yO
	XGFb62l91iJfcXJnSnkw0ubeOc3v/Fvi2i9qt4D4KkvxyqjZKBz7vuLf+zIePQe/+oItZBB/kbC
	WOFtNaX+XDel4TFMAmGeHF3z3vua5S9xYF/eNryR+j9If0zjNpfFK5Gkmxer2mB/qr/4r5A==
X-Gm-Gg: ATEYQzxEAmjRqEJBUI/nAL8zINRlU30fXJXcrIDES3+oDKpXKLGcbrlgLUVHKoMs3aI
	pvRmTdtbzucYegasf6CiTmTa1bwhD9tWecTaOmFZHHf7kMuU85+d7cftsQFvNcZzco1BqsZMDsr
	2r/VGOGVTFpwYiVEaOa6/4W+I1DAHDn0dvpIc7Y3cLsMH0sHFkyiey+4dIoHOR26wVrd8wEPKHT
	B4tnhGdw4p3NLcJ/L4K8IOyu7VsyfzSbkrJZ1qo6HMLIsqu9wzYRYobs43piwOwF57vDXYfOaZC
	tqdWTGCJZcO+utd+rVCwRbf96FCL+uuDN/BE5HMNjsbG9lL8BlsIkkPjEIPTxO7jYPZwlmtvE4k
	xe6xcN6ck0ecmqtu8mW6G/INiL8dltHrX7mn4Em0JhWpPjk2djfXG
X-Received: by 2002:a05:6a21:32a4:b0:398:ab13:b990 with SMTP id adf61e73a8af0-39f10c7c014mr2804476637.34.1775119312676;
        Thu, 02 Apr 2026 01:41:52 -0700 (PDT)
X-Received: by 2002:a05:6a21:32a4:b0:398:ab13:b990 with SMTP id adf61e73a8af0-39f10c7c014mr2804434637.34.1775119312125;
        Thu, 02 Apr 2026 01:41:52 -0700 (PDT)
Received: from [192.168.1.14] ([110.225.167.58])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c76c65a3f08sm2076441a12.31.2026.04.02.01.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2026 01:41:51 -0700 (PDT)
Message-ID: <7f349ca9-60d4-46bf-acec-84ded1da29c9@oss.qualcomm.com>
Date: Thu, 2 Apr 2026 14:11:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
 <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
 <5a278b02-f2ad-408b-b0ad-f2297817bd7e@oss.qualcomm.com>
 <opjniedtfhkv7vlb57g3xyikcfkxelthx3lmspmypws4vxz4oc@4uypmmf4t6fb>
 <4e4b50fe-1091-451e-b854-f7b061ebd88d@oss.qualcomm.com>
 <jmv4jkwku5x5acxno3vyar4cozl3makdz6vzdyjsitf2vtyhp6@cxtl7zmaayvq>
 <3f06453a-ac7e-46e0-8d37-e0f9980b438d@oss.qualcomm.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <3f06453a-ac7e-46e0-8d37-e0f9980b438d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAyMDA3NyBTYWx0ZWRfXy4ZuKadeO9tM
 9iQA80SjxJVVX4NxXsL+Aq5/op64A33eIKqBd0Yo2/JHEapUkb4bDDt6BmG6MM5Kghxo7yx8M7v
 a/RfwpmV2LXLwZphTTNeXfCOWqAED7oS/zMDCG3CtQRWHGupC4Ku/KDdiQ+VhgzEhwyHNzWGJ6/
 yNncg/qRVyqWX8GO3UNC9zjLuLrC62VRH4Q1dHQ45xTFPVUDvaGc8p2ECusMrnRTrZ3MtR22JvP
 7nmVL7heZwCh+8QnIfEWYqdbzVxBnUqXCMWl7l0Vsil86P0sVBZyMJ4MOzgcMzRpL5YjOfxiWTn
 dFZECathPdH8abv1mhCH+VBJpwNjbM6Ag4sjSQCRmpcdh4UHgzeSA5r537qh6ktBPM5fzIMp5Ez
 CKdnwTTkGd/qFojptvxV6xE66SYTX3yvM64vbxyEwNCwYq8L/3u3QgkqIErWwY8a/TCziqVDr4/
 XCZsLvvKFI41xJZi4wA==
X-Proofpoint-GUID: rXf5gspy2foxMU_7nAOyDreCv6HNF_KJ
X-Proofpoint-ORIG-GUID: rXf5gspy2foxMU_7nAOyDreCv6HNF_KJ
X-Authority-Analysis: v=2.4 cv=e9ULiKp/ c=1 sm=1 tr=0 ts=69ce2bd1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=GstQyB7T1i92F5dDEt+vJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=Ny-Kw3UXgnDAMZ4gig0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-02_01,2026-04-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604020077
X-Spamd-Bar: ---
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RJYGLWPPYJ7SBNW3LTVSNTIPDPAXBIRV
X-Message-ID-Hash: RJYGLWPPYJ7SBNW3LTVSNTIPDPAXBIRV
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:40 +0000
CC: Bjorn Andersson <andersson@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RJYGLWPPYJ7SBNW3LTVSNTIPDPAXBIRV/>
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
	DATE_IN_PAST(1.00)[440];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 3BF7C431854
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDIvMjYvMjAyNiA0OjQ4IEFNLCBUcmlsb2sgU29uaSB3cm90ZToNCj4gT24gMi8yNS8y
MDI2IDExOjQwIEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOg0KPj4gT24gV2VkLCBGZWIgMjUs
IDIwMjYgYXQgMTE6MTY6MjZBTSAtMDgwMCwgVHJpbG9rIFNvbmkgd3JvdGU6DQo+Pj4gT24gMi8y
NS8yMDI2IDc6MTIgQU0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToNCj4+Pj4gT24gV2VkLCBGZWIg
MjUsIDIwMjYgYXQgMDc6NDc6MDhQTSArMDUzMCwgRWthbnNoIEd1cHRhIHdyb3RlOg0KPj4+Pj4N
Cj4+Pj4+IE9uIDIvMjQvMjAyNiA5OjAzIEFNLCBUcmlsb2sgU29uaSB3cm90ZToNCj4+Pj4+PiBP
biAyLzIzLzIwMjYgMTE6MDggQU0sIEVrYW5zaCBHdXB0YSB3cm90ZToNCj4+Pj4+Pj4gQWRkIGlu
aXRpYWwgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFF1YWxjb21tIERTUCBBY2NlbGVyYXRvciAoUURB
KSBkcml2ZXINCj4+Pj4+Pj4gaW50ZWdyYXRlZCBpbiB0aGUgRFJNIGFjY2VsIHN1YnN5c3RlbS4N
Cj4+Pj4+Pj4NCj4+Pj4+Pj4gVGhlIG5ldyBkb2NzIGludHJvZHVjZSBRREEgYXMgYSBEUk0vYWNj
ZWwtYmFzZWQgaW1wbGVtZW50YXRpb24gb2YNCj4+Pj4+Pj4gSGV4YWdvbiBEU1Agb2ZmbG9hZCB0
aGF0IGlzIGludGVuZGVkIGFzIGEgbW9kZXJuIGFsdGVybmF0aXZlIHRvIHRoZQ0KPj4+Pj4+PiBs
ZWdhY3kgRmFzdFJQQyBkcml2ZXIgaW4gZHJpdmVycy9taXNjLiBUaGUgdGV4dCBkZXNjcmliZXMg
dGhlIGRyaXZlcg0KPj4+Pj4+PiBtb3RpdmF0aW9uLCBoaWdoLWxldmVsIGFyY2hpdGVjdHVyZSBh
bmQgaW50ZXJhY3Rpb24gd2l0aCBJT01NVSBjb250ZXh0DQo+Pj4+Pj4+IGJhbmtzLCBHRU0tYmFz
ZWQgYnVmZmVyIG1hbmFnZW1lbnQgYW5kIHRoZSBSUE1zZyB0cmFuc3BvcnQuDQo+Pj4+Pj4+DQo+
Pj4+Pj4+IFRoZSB1c2VyLXNwYWNlIGZhY2luZyBzZWN0aW9uIGRvY3VtZW50cyB0aGUgbWFpbiBR
REEgSU9DVExzIHVzZWQgdG8NCj4+Pj4+Pj4gZXN0YWJsaXNoIERTUCBzZXNzaW9ucywgbWFuYWdl
IEdFTSBidWZmZXIgb2JqZWN0cyBhbmQgaW52b2tlIHJlbW90ZQ0KPj4+Pj4+PiBwcm9jZWR1cmVz
IHVzaW5nIHRoZSBGYXN0UlBDIHByb3RvY29sLCBhbG9uZyB3aXRoIGEgdHlwaWNhbCBsaWZlY3lj
bGUNCj4+Pj4+Pj4gZXhhbXBsZSBmb3IgYXBwbGljYXRpb25zLg0KPj4+Pj4+Pg0KPj4+Pj4+PiBG
aW5hbGx5LCB0aGUgZHJpdmVyIGlzIHdpcmVkIGludG8gdGhlIENvbXB1dGUgQWNjZWxlcmF0b3Jz
DQo+Pj4+Pj4+IGRvY3VtZW50YXRpb24gaW5kZXggdW5kZXIgRG9jdW1lbnRhdGlvbi9hY2NlbCwg
YW5kIGEgYnJpZWYgZGVidWdnaW5nDQo+Pj4+Pj4+IHNlY3Rpb24gc2hvd3MgaG93IHRvIGVuYWJs
ZSBkeW5hbWljIGRlYnVnIGZvciB0aGUgUURBIGltcGxlbWVudGF0aW9uLg0KPj4+Pj4+IFNvIGV4
aXN0aW5nIGFwcGxpY2F0aW9ucyB3cml0dGVuIG92ZXIgY2hhcmFjdGVyIGRldmljZSBVQVBJIG5l
ZWRzIHRvIGJlDQo+Pj4+Pj4gcmV3cml0dGVuIG92ZXIgbmV3IFVBUEkgYW5kIGl0IHdpbGwgYmUg
YnJva2VuIG9uY2UgdGhpcyBkcml2ZXIgZ2V0cw0KPj4+Pj4+IG1lcmdlZD8gQXJlIHdlIGdvaW5n
IHRvIGtlZXAgYm90aCB0aGUgZHJpdmVycyBpbiB0aGUgTGludXgga2VybmVsDQo+Pj4+Pj4gYW5k
IG5vdCBkZXByZWNhdGUgdGhlIC9jaGFyIGRldmljZSBvbmU/IA0KPj4+Pj4+DQo+Pj4+Pj4gSXMg
UXVhbGNvbW0gZ29pbmcgdG8gcHJvdmlkZSB0aGUgd3JhcHBlciBsaWJyYXJ5IGluIHRoZSB1c2Vy
c3BhY2UNCj4+Pj4+PiBzbyB0aGF0IGV4aXN0aW5nIGFwcGxpY2F0aW9ucyBieSBvdXIgY3VzdG9t
ZXJzIGFuZCBkZXZlbG9wZXJzDQo+Pj4+Pj4ga2VlcCB3b3JraW5nIHcvIHRoZSBuZXdlciBrZXJu
ZWwgaWYgdGhlIGNoYXIgaW50ZXJmYWNlIGJhc2VkDQo+Pj4+Pj4gZHJpdmVyIGdldHMgZGVwcmVj
YXRlZD8gSXQgaXMgbm90IGNsZWFyIGZyb20geW91ciB0ZXh0IGFib3ZlLiANCj4+Pj4+IFRoYW5r
cyBmb3IgcmFpc2luZyB0aGlzLCBUcmlsb2suDQo+Pj4+Pg0KPj4+Pj4gVGhpcyBpcyBvbmUgb2Yg
dGhlIG9wZW4gaXRlbXMgdGhhdCBJIGhhdmUuIEknbSBub3QgZXhhY3RseSBzdXJlIHdoYXQgd291
bGQgYmUgdGhlDQo+Pj4+PiBhY2NlcHRhYmxlIHdheSBmb3IgdGhpcy7CoA0KPj4+Pj4NCj4+Pj4+
IEFzIHlvdSBtZW50aW9uZWQsIGFwcGxpY2F0aW9ucyB0aGF0IHJlbHkgb24gL2Rldi9mYXN0cnBj
KiBtaWdodCBub3Qgd29yayBvbiBRREENCj4+Pj4+IHdpdGhvdXQgbW9kaWZpY2F0aW9uLg0KPj4+
Pj4NCj4+Pj4+IEkgd2FzIHRoaW5raW5nIGluIHRoZSBzYW1lIGxpbmVzIGFzIHlvdSBoYXZlIG1l
bnRpb25lZCBhbmTCoCBoYXZpbmcgc29tZSBzaGltL2NvbXBhdA0KPj4+Pj4gZHJpdmVyIHRvIHRy
YW5zbGF0ZSBGYXN0UlBDIFVBUEkgdG8gUURBLiBUaGUgY29tcGF0IGRyaXZlciB3b3VsZCBleHBv
c2UgdGhlIGV4aXN0aW5nDQo+Pj4+PiBjaGFyYWN0ZXIgZGV2aWNlcyBhbmQgcm91dGUgdGhlIGNh
bGxzIHRvIFFEQS4gVGhlIGNvbXBhdCBkcml2ZXIgY291bGQgYmUgYnVpbHQgdmlhIEtjb25maWcu
DQo+Pj4+Pg0KPj4+PiBUaGlzIGlzIGEgZnVuZGFtZW50YWwgcmVxdWlyZW1lbnQsIHlvdSBuZWVk
IHRvIGFkZHJlc3MgdGhpcyBpbiBvcmRlciBmb3INCj4+Pj4gdGhpcyB0byBtb3ZlIGZvcndhcmQu
DQo+Pj4+DQo+Pj4+IFdoaWNoIG1ha2VzIG1lIHdvbmRlciBpZiBpdCB3b3VsZCBiZSBwb3NzaWJs
ZSB0byByZWFjaCBhbiBhY2NlbCBkcml2ZXINCj4+Pj4gdGhyb3VnaCBpbmNyZW1lbnRhbCB0cmFu
c2l0aW9uIG9mIHRoZSBjdXJyZW50IGRyaXZlciwgaW5zdGVhZCBvZiBqdXN0DQo+Pj4+IGRyb3Bw
aW5nIGluIGEgZmV3IHRob3VzYW5kIGxpbmVzIG9mIG5ldyBjb2RlL2Rlc2lnbi4NCj4+Pj4NCj4+
Pj4+IEhvd2V2ZXIsIEkgaGF2ZW7igJl0IGVuY291bnRlcmVkIGFuIGV4YW1wbGUgb2Ygc3VjaCBh
IFVBUEnigJF0cmFuc2xhdGlvbiBkcml2ZXIgaW4gdGhlIGtlcm5lbA0KPj4+Pj4gYmVmb3JlLCBz
byBJIHdvdWxkIHdhbnQgZ3VpZGFuY2UgZnJvbSBtYWludGFpbmVycyBvbiB3aGV0aGVyIHRoaXMg
aXMgYW4gYWNjZXB0YWJsZQ0KPj4+Pj4gbW9kZWwgb3Igbm90Lg0KPj4+Pj4NCj4+Pj4+IFJlZ2Fy
ZGluZyB5b3VyIHF1ZXN0aW9uIGFib3V0IGxpYnJhcnksIGFsbCB0aGUgQVBJcyBleHBvc2VkIGJ5
IGdpdGh1Yi9mYXN0cnBjIGxpYnJhcnkgYXJlIGtlcHQNCj4+Pj4+IHVuY2hhbmdlZCBpbiB0ZXJt
cyBvZiBkZWZpbml0aW9ucyBhbmQgZXhwZWN0YXRpb24uIFRoZSBzYW1lIHByb2plY3QgY2FuIGJl
IGJ1aWxkIGZvciBib3RoDQo+Pj4+PiBGYXN0UlBDIGFuZCBRREEgYmFzZWQgb24gY29uZmlndXJl
IG9wdGlvbnMuIFNvLCB0aGUgYXBwbGljYXRpb25zIHVzaW5nIGdpdGh1Yi9mYXN0cnBjIHNob3Vs
ZA0KPj4+Pj4gbm90IGZhY2UgYW55IHByb2JsZW0gaWYgdGhlIGxpYnMgaXMgYnVpbHQgd2l0aCBw
cm9wZXIgY29uZmlndXJlIG9wdGlvbnMuDQo+Pj4+Pg0KPj4+PiBZb3UncmUgYXNzdW1pbmcgdGhh
dCB0aGUga2VybmVsIGFuZCB1c2Vyc3BhY2UgYXJlIGEgdW5pZmllZCBwaWVjZSBvZg0KPj4+PiBz
b2Z0d2FyZSwgdGhleSBhcmUgbm90LiBJdCBtdXN0IGJlIHBvc3NpYmxlIGZvciBtZSB0byBpbnN0
YWxsIGEgbmV3DQo+Pj4+IGtlcm5lbCBwYWNrYWdlIHdpdGhvdXQgaGF2aW5nIHRvIHJlcGxhY2Ug
dGhlIHVzZXJzcGFjZSBsaWJyYXJpZXMuDQo+Pj4gVGhhbmsgeW91IEJqb3JuIGZvciBwcm92aWRp
bmcgdGhlIGlucHV0cy4gDQo+Pj4NCj4+PiBJIGFsc28gZm9yZXNlZSB0aGF0IHdlIHdpbGwgYmUg
c3RvcCBhZGRpbmcgKG9yIGFscmVhZHkgaGFwcGVuZWQpIG5ldyBmZWF0dXJlcw0KPj4+IGludG8g
dGhlIGV4aXN0aW5nIGZhc3RycGMgZHJpdmVyLCBzbyBjYWxsaW5nIHRoZSBuZXcgZHJpdmVyIGFz
IGFuIGFsdGVybmF0aXZlDQo+Pj4gaXMgaW4gb3ZlcnNvbGQgY2F0ZWdvcnkuDQo+Pj4NCj4+PiBZ
b3UgYXJlIHByZXR0eSBtdWNoIGJlZ2FuIHRoZSBkZXByZWNhdGluZyB0aGUgZXhpc3RpbmcgZmFz
dHJwYyBkcml2ZXIsIHNvIGxldCdzDQo+Pj4ganVzdCBtZW50aW9uIGl0IGlmIHRoYXQgaXMgdGhl
IGNhc2UgYW5kIHByb3ZpZGUgbWlncmF0aW9uL3NoaW0gcGF0aCBzbyB0aGF0DQo+Pj4gZXhpc3Rp
bmcgYmluYXJpZXMgZG9lc24ndCBicmVhay4NCj4+IEkgYWdyZWUgdGhhdCB3ZSBuZWVkIGEgbWln
cmF0aW9uIHBhdGgsIGJ1dCBJJ2QgcmVhbGx5IGZvY3VzIG9uIGl0IGFmdGVyDQo+PiBnZXR0aW5n
IGF0IGxlYXN0IGJhc2ljIHBhcnRzIG9mIHRoZSBRREEgcmV2aWV3ZWQgYW5kIGFncmVlZCB1cG9u
Lg0KPj4gT3RoZXJ3aXNlIHRoZSBzaGltIGxheWVyIHdpbGwgYmUgcmV3b3JrZWQgYWdhaW4gYW5k
IGFnYWluIHdpdGggbm8NCj4+IGltbWVkaWF0ZSBhZGRlZCBiZW5lZml0Lg0KPj4NCj4gSSBhbSBm
aW5lIHdpdGggdGhlIHJldmlldyB0byBiZSBjb250aW51ZWQsIHRoaXMgaXMgUkZDIHNlcmllcyBh
bnl3YXkuIFdlIHNob3VsZCBhbHNvIGRlY2lkZQ0KPiB0aGUgZGVzaWduIG9mIHRoZSBzaGltIGxh
eWVyIGhlcmUgYXMgd2VsbC4gSSBwcmVmZXIgdG8gbm90IGhhdmUgbXVsdGlwbGUNCj4gUkZDIHJl
dmlzaW9ucyBoZXJlIGlmIHdlIGRvbid0IGFncmVlIG9uIHRoZSBiYXNpYyByZXF1aXJlbWVudHMg
d2hpY2gNCj4gbGVhZHMgdG8gYWNjZXB0YW5jZSBvZiB0aGlzIG5ldyBkcml2ZXIuIA0KDQpKdXN0
IHdhbnRlZCB0byBwcm92aWRlIGFuIHVwZGF0ZSBoZXJlLCBJJ20gY3VycmVudGx5IHdvcmtpbmcg
b24gYSBuZXcNCnZlcnNpb24gb2YgdGhpcyBkcml2ZXIgd2l0aCBtYWpvcml0eSBvZiBjb21tZW50
cyBhZGRyZXNzZWQuDQoNCkknbSB0aGlua2luZyBvZiBpbmNsdWRpbmcgbGltaXRlZCBmdW5jdGlv
bmFsaXRpZXMgKHNheSwgaW5pdCwgZ2VtX2FsbG9jLCBpbnZva2UpDQphcyBvZiBub3cgYWxvbmcg
d2l0aCBhIG1pbmltYWwgY29tcGF0L3NoaW0gZHJpdmVyLg0KDQpUaGUgY29tcGF0IGRyaXZlciBp
cyBjdXJyZW50bHkgcGxhbm5lZCBpbiB0aGUgc2FtZSBkcml2ZXJzL2FjY2VsL3FkYSBwYXRoIHdo
aWNoDQp3aWxsIGJlIGV4cG9zaW5nIHNhbWUgaW50ZXJmYWNlcyhkZXZpY2Ugbm9kZXMgYW5kIGlv
Y3RscykgYXMgZmFzdHJwYyBhbmQgc2ltcGx5DQpyb3V0ZSB0aGUgY2FsbHMgdG8gUURBLiBQbGVh
c2UgbGV0IG1lIGtub3cgaWYgeW91IHNlZSBhbnkgY29uY2VybnMgd2l0aCB0aGlzLiBJDQpjYW4g
cmV3b3JrIG15IGFwcHJvYWNoIGJlZm9yZSBzZW5kaW5nIHRoZSB2MSBvZiBhY3R1YWwgcGF0Y2gg
c2VyaWVzLg0KDQovL0VrYW5zaA0KDQo+DQo+IC0tLVRyaWxvayBTb25pDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
