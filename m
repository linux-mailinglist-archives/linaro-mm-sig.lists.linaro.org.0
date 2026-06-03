Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z8u4H4lIKWpITgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:20:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BD0668ACD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:20:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=Tz4k9u8e;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E13E40A6A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:20:40 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id EFF8B3F949
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:19:27 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 652K2OQs2884659
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:19:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jOezco5+6BfmrPgKfWENo0B2DWVFkDWfjF+LxPufsWM=; b=Tz4k9u8ewVkJrO5B
	99GB3NoAxaV/ZgnBI5djpO9t9CiuxBOwWbgiYZ15Dou2NkfUl8fwbVqvcH43VPdv
	CbvtGdm5wm1S3ktWSq+pyilEiuMMVToFEPobSTan3F5560/XS80pGmmVW5AVHTka
	O/8ly7e9RsUFprK66xn7pC6IE/4WSSuiMoOzXQeNBZA9BdpGzL0Ruv7bIJaWERnR
	odTUeR0vun/2F2aJVwrX5Lj/iykCVQFntqTduXCHhVjh1peZZaYQhw4J+Ygb5VP+
	qxFlqBpRupSQbHc59MIYsSyr4/NOmG4Txf3R0iRg1a5Tb03mfXePTk1nxr3pyR1o
	J6EcXQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ehsu156m7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:19:27 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-36bba9b849dso5079072a91.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780463966; x=1781068766; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jOezco5+6BfmrPgKfWENo0B2DWVFkDWfjF+LxPufsWM=;
        b=M+485DKy6YTDR0+hJ8StIaeMmF9JzOVJ1yTj1VWna6aB8xJtw2e0lgEPnZ4DftWwBz
         v9bAU2X6f9w/Zme/RFR0NKVhIIwus2wCqQlN4esBgQwHZYZKznFkz2XGqEAb3OIaflac
         l6f51CuKAGC/GV8/8ToBGJG7/YOztLtLw2S6dD9mdoXzfeSh3xW+0o0kVx233oRfS8Ez
         klMh7/uHe6oDLGAXu1W3/bpT5lCC0lBt+MdhC8nC5AlCOuJv1l5o+xsA+b5Uwy+2vZkV
         R2mcQ9P5NVp1yH1socZB08tmVgN4ie+446njnReDhcmbSOkc5om5NL4GY4ESpWLlQ5mi
         NrUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780463966; x=1781068766;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jOezco5+6BfmrPgKfWENo0B2DWVFkDWfjF+LxPufsWM=;
        b=WvpNDZu53Me4/4nIvOCyjB8dGKKF/7S6VhrQxW4qBlDrqJhi40wvpIgjwv3GmppHAQ
         uEOeB0t5CU/dTi/PY9hcFNwOxn2VdB3bbzSpcyhHC75pngHvTbA1cOGgp+JoOQ5rU9DT
         22r6DUUvo8o0SvL8Mcz0q5l9vB3MXB7p1DgTPVGe7GF38XV3xaMnRE8xXhCxWuC6P1oP
         B78ZoSmuR8arvyyVJ8M/Jkwh8ILzGf1YXORYEAa0wa3HSn2R/0YcG0iD5WTR6yehEZcg
         MTwc5fGIcrw3NTVNPLY18FVZfkMY7VFyphkTO4dyvUg2MTpIDdVZc2itGxfYv2LfAHAa
         NtRA==
X-Forwarded-Encrypted: i=1; AFNElJ+G4TowK0AW8NjHi9at3mGnz4Aqmwu8PbOfdrzlQpXsoCLCA7c2W5I/uG0deHx3YZ2kQd8zsS7Kn6sEmXy0@lists.linaro.org
X-Gm-Message-State: AOJu0YxH1XNBklgoTo8MO3VQ0fbJ3ozlY47HQWy3f2byE9mKohI0SWTH
	YN562LkvOZ1EXtORqhm3RswoS3cYm9m5hxjflYuA7u8/13fl01ujgnB+8m+UBqvIcO2A+4xJv3v
	1zCUwOfqE1uN/N2wx4ga9vyf7gwl1o0hm9Ae/UaLaJNxcLxQYruBzu8G16/gjAfw597QJ7A==
X-Gm-Gg: Acq92OHznmv1JfuhRhczz+7Pq1cU7OAUPsZBqhHne555kTOQjLSbXJsF5j1yK3IepJ3
	dIQBuzpaTPArzXfZ52NEOIP+7TUhdtL6dtQMk7Zu+Pi/ZCzdDoQQejHML8+qPmImnINBSxttrP+
	6L1/iM4eULRx/oICev2YWMCwOslGg9V6dkZr4lsD3evP5qGhgrBNnsmVpe48HBwR+aA02nd3u73
	FI75h4ZUY8KaxVtevJE/y8CdTTD/R0fdngGinI5VIG/fiCu0JN5NnkvFSBu3FYIc3mhxeHuo5S5
	hFEKROarIQYzSRtWaWe0jGZiI7sZt6F5Z4xCf82p2DLUCiIr9OKnJN5/u68ns3sNWLQUHrSKB9c
	QY6Q5C/nZyqQ1uoVW01cWmZF6SkAgYfnIDjevxlPAa4MBP8B/ZGMxvGvEDZop
X-Received: by 2002:a17:90b:540c:b0:368:5367:d679 with SMTP id 98e67ed59e1d1-36e2f3c32demr2076745a91.9.1780463966259;
        Tue, 02 Jun 2026 22:19:26 -0700 (PDT)
X-Received: by 2002:a17:90b:540c:b0:368:5367:d679 with SMTP id 98e67ed59e1d1-36e2f3c32demr2076710a91.9.1780463965719;
        Tue, 02 Jun 2026 22:19:25 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36e0a14485esm1695509a91.3.2026.06.02.22.19.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:19:25 -0700 (PDT)
Message-ID: <77511905-1dac-4605-8195-68ec770740d2@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 10:49:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-2-b2d984c297f8@oss.qualcomm.com>
 <paiohsil5pmvm7cf6jxrhaj2225bgvlt3scrag4x6gbkyosow5@l4tbakbnxcvo>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <paiohsil5pmvm7cf6jxrhaj2225bgvlt3scrag4x6gbkyosow5@l4tbakbnxcvo>
X-Proofpoint-ORIG-GUID: Lx4pldFc3UsdLCqufYJJnF4ZCbZqoaZJ
X-Proofpoint-GUID: Lx4pldFc3UsdLCqufYJJnF4ZCbZqoaZJ
X-Authority-Analysis: v=2.4 cv=MKFQXsZl c=1 sm=1 tr=0 ts=6a1fb95f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=yE1-P__lAf5keu_9ItMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA0NyBTYWx0ZWRfX0XmYy+S0BrMy
 diZnnnf1KAqGv+yIMqGqJN43UHvHCBpw53RyvNoYFmtWjwWiviqegAAlY+NBju5j7YBPeQnCWaS
 tc5OuVHfe6k+Pld8EKAVPjCziyyxav4IE9Z27KqccONqqYjz4HM+xiJPLZVJCCFHbldMZcJNZUt
 AgqzH4nzBCyFg0kdlmHlNgcSpG2tHaMrntsXImyPTcGkF3CY/GncaWve7noCD21pKUzImuSvbK8
 ZTBIwmfP1SiLkKYrlGy2QZpkyKKTE2QO43jEHaTXV14MtSRtqKTx5KtKiUQVw+uX59YuH7LyCm5
 x5Nr+37wtG/+1G/KA7IeQk0v1YIEM/o+6237Fl5TkL/H+JJmczkb5yzyJ7Zx43m4+mLMn7UxYLq
 xSWFpKR1cCmijc3PZ1p58cNltO9tht4DhC3Y+iYzNNQg2Wi/4IBUOAiZe9lo9dQBDocFi+CyadF
 tJR8nUzoAGZZVpxnwfQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030047
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DNEL4H6MOI5PZM56YPOEUZUPLRPIXBKN
X-Message-ID-Hash: DNEL4H6MOI5PZM56YPOEUZUPLRPIXBKN
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:19 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] accel/qda: Add QDA driver documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DNEL4H6MOI5PZM56YPOEUZUPLRPIXBKN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[174];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,foo:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00BD0668ACD

T24gMjAtMDUtMjAyNiAxOTo0MiwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4gT24gVHVlLCBN
YXkgMTksIDIwMjYgYXQgMTE6NDU6NTJBTSArMDUzMCwgRWthbnNoIEd1cHRhIHZpYSBCNCBSZWxh
eSB3cm90ZToNCj4+IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29t
bS5jb20+DQo+Pg0KPj4gQWRkIGRvY3VtZW50YXRpb24gZm9yIHRoZSBRdWFsY29tbSBEU1AgQWNj
ZWxlcmF0b3IgKFFEQSkgZHJpdmVyIHVuZGVyDQo+PiBEb2N1bWVudGF0aW9uL2FjY2VsL3FkYS8u
IFRoZSBkb2N1bWVudGF0aW9uIGNvdmVycyB0aGUgZHJpdmVyDQo+PiBhcmNoaXRlY3R1cmUsIEdF
TS1iYXNlZCBidWZmZXIgbWFuYWdlbWVudCwgSU9NTVUgY29udGV4dCBiYW5rDQo+PiBpc29sYXRp
b24sIGFuZCB0aGUgUlBNc2cgdHJhbnNwb3J0IGxheWVyLg0KPj4NCj4+IFRoZSB1c2VyLXNwYWNl
IEFQSSBzZWN0aW9uIGRlc2NyaWJlcyB0aGUgRFJNIElPQ1RMcyBmb3Igc2Vzc2lvbg0KPj4gbWFu
YWdlbWVudCwgR0VNIGJ1ZmZlciBhbGxvY2F0aW9uLCBhbmQgcmVtb3RlIHByb2NlZHVyZSBpbnZv
Y2F0aW9uIHZpYQ0KPj4gdGhlIEZhc3RSUEMgcHJvdG9jb2wsIGFsb25nIHdpdGggYSB0eXBpY2Fs
IGFwcGxpY2F0aW9uIGxpZmVjeWNsZQ0KPj4gZXhhbXBsZS4gU2VjdGlvbnMgZm9yIGR5bmFtaWMg
ZGVidWcgYW5kIGJhc2ljIHRlc3RpbmcgYXJlIGFsc28NCj4+IGluY2x1ZGVkLg0KPj4NCj4+IFdp
cmUgdGhlIG5ldyBkb2N1bWVudGF0aW9uIGludG8gdGhlIENvbXB1dGUgQWNjZWxlcmF0b3JzIGlu
ZGV4IGF0DQo+PiBEb2N1bWVudGF0aW9uL2FjY2VsL2luZGV4LnJzdC4NCj4+DQo+PiBBc3Npc3Rl
ZC1ieTogQ2xhdWRlOmNsYXVkZS00LTYtc29ubmV0DQo+PiBTaWduZWQtb2ZmLWJ5OiBFa2Fuc2gg
R3VwdGEgPGVrYW5zaC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPg0KPj4gLS0tDQo+PiAgRG9jdW1l
bnRhdGlvbi9hY2NlbC9pbmRleC5yc3QgICAgIHwgICAxICsNCj4+ICBEb2N1bWVudGF0aW9uL2Fj
Y2VsL3FkYS9pbmRleC5yc3QgfCAgMTMgKysrKw0KPj4gIERvY3VtZW50YXRpb24vYWNjZWwvcWRh
L3FkYS5yc3QgICB8IDE0NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0K
Pj4gIDMgZmlsZXMgY2hhbmdlZCwgMTYwIGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9hY2NlbC9pbmRleC5yc3QgYi9Eb2N1bWVudGF0aW9uL2FjY2VsL2lu
ZGV4LnJzdA0KPj4gaW5kZXggY2JjN2Q0YzM4NzZhLi41OTAxZWE3Zjc4NGMgMTAwNjQ0DQo+PiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2FjY2VsL2luZGV4LnJzdA0KPj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9hY2NlbC9pbmRleC5yc3QNCj4+IEBAIC0xMCw0ICsxMCw1IEBAIENvbXB1dGUgQWNjZWxlcmF0
b3JzDQo+PiAgICAgaW50cm9kdWN0aW9uDQo+PiAgICAgYW1keGRuYS9pbmRleA0KPj4gICAgIHFh
aWMvaW5kZXgNCj4+ICsgICBxZGEvaW5kZXgNCj4+ICAgICByb2NrZXQvaW5kZXgNCj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2FjY2VsL3FkYS9pbmRleC5yc3QgYi9Eb2N1bWVudGF0aW9u
L2FjY2VsL3FkYS9pbmRleC5yc3QNCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+PiBpbmRleCAw
MDAwMDAwMDAwMDAuLjAxMzQwMGNmOWMyNQ0KPj4gLS0tIC9kZXYvbnVsbA0KPj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9hY2NlbC9xZGEvaW5kZXgucnN0DQo+PiBAQCAtMCwwICsxLDEzIEBADQo+PiAr
Li4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0KPj4gKw0KPj4gKz09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+ICthY2NlbC9xZGEgUXVhbGNvbW0gRFNQ
IEFjY2VsZXJhdG9yDQo+PiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPj4g
Kw0KPj4gK1RoZSBRREEgZHJpdmVyIHByb3ZpZGVzIGEgRFJNIGFjY2VsIGJhc2VkIGludGVyZmFj
ZSBmb3IgUXVhbGNvbW0gRFNQIG9mZmxvYWQuDQo+PiArSXQgdXNlcyB0aGUgRmFzdFJQQyBwcm90
b2NvbCBhbmQgaW50ZWdyYXRlcyB3aXRoIERSTSBhbmQgR0VNIGluZnJhc3RydWN0dXJlDQo+PiAr
Zm9yIGRldmljZSBhbmQgYnVmZmVyIG1hbmFnZW1lbnQuDQo+PiArDQo+PiArLi4gdG9jdHJlZTo6
DQo+PiArDQo+PiArICAgcWRhDQo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hY2NlbC9x
ZGEvcWRhLnJzdCBiL0RvY3VtZW50YXRpb24vYWNjZWwvcWRhL3FkYS5yc3QNCj4+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0DQo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjlmNDlhZjZlNmFjYw0KPj4gLS0t
IC9kZXYvbnVsbA0KPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9hY2NlbC9xZGEvcWRhLnJzdA0KPj4g
QEAgLTAsMCArMSwxNDYgQEANCj4+ICsuLiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MC1vbmx5DQo+PiArDQo+PiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0K
Pj4gK1F1YWxjb21tIERTUCBBY2NlbGVyYXRvciAoUURBKSBEcml2ZXINCj4+ICs9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+PiArDQo+PiArSW50cm9kdWN0aW9uDQo+PiAr
PT09PT09PT09PT09DQo+PiArDQo+PiArVGhlIFFEQSBkcml2ZXIgaXMgYSBEUk0gYWNjZWwgZHJp
dmVyIGZvciBRdWFsY29tbSdzIERTUHMuIEl0IHByb3ZpZGVzIGENCj4+ICtEUk0gYWNjZWwgYmFz
ZWQgaW50ZXJmYWNlIGZvciBRdWFsY29tbSBEU1Agb2ZmbG9hZCwgc3VwcG9ydGluZyB3b3JrbG9h
ZHMNCj4+ICtzdWNoIGFzIEFJIGluZmVyZW5jZSwgY29tcHV0ZXIgdmlzaW9uLCBhdWRpbyBwcm9j
ZXNzaW5nLCBhbmQgc2Vuc29yIG9mZmxvYWQNCj4+ICtvbiBRdWFsY29tbSBTb0NzLiBJdCB1c2Vz
IHRoZSBGYXN0UlBDIHByb3RvY29sIGFuZCBpbnRlZ3JhdGVzIHdpdGggRFJNIGFuZA0KPj4gK0dF
TSBpbmZyYXN0cnVjdHVyZSBmb3IgZGV2aWNlIGFuZCBidWZmZXIgbWFuYWdlbWVudC4NCj4+ICsN
Cj4+ICtLZXkgRmVhdHVyZXMNCj4+ICs9PT09PT09PT09PT0NCj4+ICsNCj4+ICsqICAgKipEUk0g
YWNjZWwgSW50ZXJmYWNlKio6IEV4cG9zZXMgYSBzdGFuZGFyZCBjaGFyYWN0ZXIgZGV2aWNlIG5v
ZGUNCj4+ICsgICAgKGUuZy4sIGBgL2Rldi9hY2NlbC9hY2NlbDBgYCkgdmlhIHRoZSBEUk0gYWNj
ZWwgc3Vic3lzdGVtLg0KPj4gKyogICAqKkZhc3RSUEMgUHJvdG9jb2wqKjogSW1wbGVtZW50cyB0
aGUgRmFzdFJQQyBwcm90b2NvbCBmb3IgY29tbXVuaWNhdGlvbg0KPj4gKyAgICBiZXR3ZWVuIHRo
ZSBhcHBsaWNhdGlvbiBwcm9jZXNzb3IgYW5kIHRoZSBEU1AuDQo+PiArKiAgICoqR0VNIEJ1ZmZl
ciBNYW5hZ2VtZW50Kio6IFVzZXMgdGhlIERSTSBHRU0gaW50ZXJmYWNlIGZvciBidWZmZXINCj4+
ICsgICAgYWxsb2NhdGlvbiwgbGlmZWN5Y2xlIG1hbmFnZW1lbnQsIGFuZCBETUEtQlVGIGltcG9y
dC9leHBvcnQuDQo+PiArKiAgICoqSU9NTVUgSXNvbGF0aW9uKio6IFVzZXMgSU9NTVUgY29udGV4
dCBiYW5rcyB0byBlbmZvcmNlIG1lbW9yeSBpc29sYXRpb24NCj4+ICsgICAgYmV0d2VlbiBkaWZm
ZXJlbnQgRFNQIHVzZXIgc2Vzc2lvbnMuDQo+PiArKiAgICoqTW9kdWxhciBEZXNpZ24qKjogQ2xl
YW4gc2VwYXJhdGlvbiBiZXR3ZWVuIHRoZSBjb3JlIERSTSBsb2dpYywgdGhlDQo+PiArICAgIG1l
bW9yeSBtYW5hZ2VyLCBhbmQgdGhlIFJQTXNnLWJhc2VkIHRyYW5zcG9ydCBsYXllci4NCj4+ICsN
Cj4+ICtBcmNoaXRlY3R1cmUNCj4+ICs9PT09PT09PT09PT0NCj4+ICsNCj4+ICtUaGUgUURBIGRy
aXZlciBjb25zaXN0cyBvZiBzZXZlcmFsIGZ1bmN0aW9uYWwgYmxvY2tzOg0KPj4gKw0KPj4gKzEu
ICAqKkNvcmUgRHJpdmVyIChgYHFkYV9kcnZgYCkqKjogTWFuYWdlcyBkZXZpY2UgcmVnaXN0cmF0
aW9uLCBmaWxlIG9wZXJhdGlvbnMsDQo+PiArICAgIGFuZCBEUk0gYWNjZWwgaW50ZWdyYXRpb24u
DQo+PiArMi4gICoqTWVtb3J5IE1hbmFnZXIgKGBgcWRhX21lbW9yeV9tYW5hZ2VyYGApKio6IEEg
ZmxleGlibGUgbWVtb3J5IG1hbmFnZW1lbnQNCj4+ICsgICAgbGF5ZXIgdGhhdCBoYW5kbGVzIElP
TU1VIGNvbnRleHQgYmFua3MuIEl0IHN1cHBvcnRzIHBsdWdnYWJsZSBiYWNrZW5kcw0KPj4gKyAg
ICAoc3VjaCBhcyBETUEtY29oZXJlbnQpIHRvIGFkYXB0IHRvIGRpZmZlcmVudCBTb0MgbWVtb3J5
IGFyY2hpdGVjdHVyZXMuDQo+PiArMy4gICoqR0VNIFN1YnN5c3RlbSoqOiBJbXBsZW1lbnRzIHRo
ZSBEUk0gR0VNIGludGVyZmFjZSBmb3IgYnVmZmVyIG1hbmFnZW1lbnQ6DQo+PiArDQo+PiArICAg
ICogKipgYHFkYV9nZW1gYCoqOiBDb3JlIEdFTSBvYmplY3QgbWFuYWdlbWVudCwgaW5jbHVkaW5n
IGFsbG9jYXRpb24sIG1tYXANCj4+ICsgICAgICBvcGVyYXRpb25zLCBhbmQgYnVmZmVyIGxpZmVj
eWNsZSBtYW5hZ2VtZW50Lg0KPj4gKyAgICAqICoqYGBxZGFfcHJpbWVgYCoqOiBQUklNRSBpbXBv
cnQgZnVuY3Rpb25hbGl0eSBmb3IgRE1BLUJVRiBpbnRlcm9wZXJhYmlsaXR5DQo+PiArICAgICAg
d2l0aCBvdGhlciBrZXJuZWwgc3Vic3lzdGVtcy4NCj4+ICsNCj4+ICs0LiAgKipUcmFuc3BvcnQg
TGF5ZXIgKGBgcWRhX3JwbXNnYGApKio6IEFic3RyYWN0aW9uIG92ZXIgdGhlIFJQTXNnIGZyYW1l
d29yaw0KPj4gKyAgICB0byBoYW5kbGUgbG93LWxldmVsIG1lc3NhZ2UgcGFzc2luZyB3aXRoIHRo
ZSBEU1AgZmlybXdhcmUuDQo+PiArNS4gICoqQ29tcHV0ZSBCdXMgKGBgcWRhX2NvbXB1dGVfYnVz
YGApKio6IEEgY3VzdG9tIHZpcnR1YWwgYnVzIHVzZWQgdG8NCj4+ICsgICAgZW51bWVyYXRlIGFu
ZCBtYW5hZ2UgdGhlIHNwZWNpZmljIGNvbXB1dGUgY29udGV4dCBiYW5rcyBkZWZpbmVkIGluIHRo
ZQ0KPj4gKyAgICBkZXZpY2UgdHJlZS4gVGhlIGJ1cyB3YXMgaW50cm9kdWNlZCBiZWNhdXNlIElP
TU1VIGNvbnRleHQgYmFua3MgKENCcykgYXJlDQo+PiArICAgIHN5bnRoZXRpYyBjb25zdHJ1Y3Rz
IOKAlCBub3QgcmVhbCBwbGF0Zm9ybSBkZXZpY2VzIOKAlCBtYWtpbmcgYSBwbGF0Zm9ybSBkcml2
ZXINCj4+ICsgICAgYW4gaW5jb3JyZWN0IGFic3RyYWN0aW9uIGZvciB0aGVtLiBUaGUgZWFybGll
ciBwbGF0Zm9ybS1kcml2ZXIgYXBwcm9hY2ggYWxzbw0KPj4gKyAgICBoYWQgYSByYWNlIGNvbmRp
dGlvbjogZGV2aWNlIG5vZGVzIHdlcmUgY3JlYXRlZCBiZWZvcmUgdGhlIFJQTXNnIGNoYW5uZWwN
Cj4+ICsgICAgcmVzb3VyY2VzIHdlcmUgZnVsbHkgaW5pdGlhbGl6ZWQsIGFuZCBiZWNhdXNlIGBg
cHJvYmVgYCBydW5zIGFzeW5jaHJvbm91c2x5LA0KPj4gKyAgICBhcHBsaWNhdGlvbnMgY291bGQg
b3BlbiBhIENCIGRldmljZSBhbmQgYXR0ZW1wdCB0byBzdGFydCBhIHNlc3Npb24gYmVmb3JlDQo+
PiArICAgIHRoZSB1bmRlcmx5aW5nIHRyYW5zcG9ydCB3YXMgcmVhZHkuIFRoZSBjb21wdXRlIGJ1
cyBtYWtlcyBDQiBsaWZldGltZQ0KPj4gKyAgICBleHBsaWNpdGx5IHN1Ym9yZGluYXRlIHRvIHRo
ZSBwYXJlbnQgUURBIGRldmljZSwgY2xvc2luZyB0aGF0IHdpbmRvdy4NCj4+ICs2LiAgKipGYXN0
UlBDIENvcmUgKGBgcWRhX2Zhc3RycGNgYCkqKjogSW1wbGVtZW50cyB0aGUgcHJvdG9jb2wgbG9n
aWMgZm9yDQo+PiArICAgIG1hcnNoYWxsaW5nIGFyZ3VtZW50cyBhbmQgaGFuZGxpbmcgcmVtb3Rl
IGludm9jYXRpb25zLg0KPj4gKw0KPj4gK1VzZXItU3BhY2UgQVBJDQo+PiArPT09PT09PT09PT09
PT0NCj4+ICsNCj4+ICtUaGUgZHJpdmVyIGV4cG9zZXMgYSBzZXQgb2YgRFJNLWNvbXBsaWFudCBJ
T0NUTHM6DQo+PiArDQo+PiArKiAgIGBgRFJNX0lPQ1RMX1FEQV9RVUVSWWBgOiBRdWVyeSBEU1Ag
dHlwZSAoZS5nLiwgImNkc3AiLCAiYWRzcCIpDQo+PiArICAgIGFuZCBjYXBhYmlsaXRpZXMuDQo+
PiArKiAgIGBgRFJNX0lPQ1RMX1FEQV9SRU1PVEVfU0VTU0lPTl9DUkVBVEVgYDogSW5pdGlhbGl6
ZSBhIG5ldyBwcm9jZXNzIGNvbnRleHQNCj4+ICsgICAgb24gdGhlIERTUC4NCj4+ICsqICAgYGBE
Uk1fSU9DVExfUURBX1JFTU9URV9JTlZPS0VgYDogU3VibWl0IGEgcmVtb3RlIG1ldGhvZCBpbnZv
Y2F0aW9uICh0aGUNCj4+ICsgICAgcHJpbWFyeSBleGVjdXRpb24gdW5pdCkuDQo+PiArKiAgIGBg
RFJNX0lPQ1RMX1FEQV9HRU1fQ1JFQVRFYGA6IEFsbG9jYXRlIGEgR0VNIGJ1ZmZlciBvYmplY3Qg
Zm9yIERTUCB1c2FnZS4NCj4+ICsqICAgYGBEUk1fSU9DVExfUURBX0dFTV9NTUFQX09GRlNFVGBg
OiBSZXRyaWV2ZSBtbWFwIG9mZnNldHMgZm9yIG1lbW9yeSBtYXBwaW5nLg0KPj4gKyogICBgYERS
TV9JT0NUTF9RREFfUkVNT1RFX01BUGBgIC8gYGBEUk1fSU9DVExfUURBX1JFTU9URV9NVU5NQVBg
YDogTWFwIG9yIHVubWFwDQo+PiArICAgIGJ1ZmZlcnMgaW50byB0aGUgRFNQJ3MgdmlydHVhbCBh
ZGRyZXNzIHNwYWNlLiBFYWNoIGFjY2VwdHMgYSBgYHJlcXVlc3RgYA0KPj4gKyAgICBmaWVsZCBz
ZWxlY3RpbmcgYmV0d2VlbiBhIGxlZ2FjeSBvcGVyYXRpb24gKGBgUURBX01BUF9SRVFVRVNUX0xF
R0FDWWBgIC8NCj4+ICsgICAgYGBRREFfTVVOTUFQX1JFUVVFU1RfTEVHQUNZYGApIGFuZCBhbiBh
dHRyaWJ1dGUtYmFzZWQgb3BlcmF0aW9uDQo+PiArICAgIChgYFFEQV9NQVBfUkVRVUVTVF9BVFRS
YGAgLyBgYFFEQV9NVU5NQVBfUkVRVUVTVF9BVFRSYGApLg0KPiANCj4gRXhwbGFpbiwgd2hhdCBo
YXBwZW5zIGluIHRoZSB1c2VycyBkb24ndCBtYXAgdGhlIGJ1ZmZlcnMgaW50byB0aGUgRFNQDQo+
IHNwYWNlLiBXaWxsIERSTV9JT0NUTF9RREFfUkVNT1RFX0lOVk9LRSBoYW5kbGUgdGhlIG1hcHBp
bmcgb3Igbm90PyBXaGF0DQo+IGlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhvc2UgdHdvIG1v
ZGVzPw0KSSdsbCBhZGQgbW9yZSBkZXRhaWxzIGZvciB0aGlzLCB0aGlzIGlzIHNwZWNpZmljYWxs
eSByZXF1aXJlZCB3aGVuDQpwZXJzaXN0ZW50IHR5cGUgb2YgRFNQIG1hcHBpbmdzIGFyZSByZXF1
aXJlZC4+DQo+IFdvdWxkIHRoZSBkcml2ZXIgYmVuZWZpdCBmcm9tIHVzaW5nIEdQVVZNPw0KSSdt
IG5vdCBleGFjdGx5IHN1cmUgaG93IHRoaXMgd2lsbCBmaXQgaW4gaGVyZSwgSSdsbCBjaGVjayB0
aGlzIGFuZCBnZXQNCmJhY2suPg0KPj4gKw0KPj4gK1VzYWdlIEV4YW1wbGUNCj4+ICs9PT09PT09
PT09PT09DQo+PiArDQo+PiArQSB0eXBpY2FsIGxpZmVjeWNsZSBmb3IgYSB1c2VyLXNwYWNlIGFw
cGxpY2F0aW9uOg0KPj4gKw0KPj4gKzEuICAqKkRpc2NvdmVyeSoqOiBPcGVuIGBgL2Rldi9hY2Nl
bC9hY2NlbCpgYCBhbmQgdXNlDQo+PiArICAgIGBgRFJNX0lPQ1RMX1FEQV9RVUVSWWBgIHRvIGlk
ZW50aWZ5IHRoZSBEU1AgZG9tYWluIHNlcnZlZCBieSB0aGF0DQo+PiArICAgIGRldmljZSBub2Rl
Lg0KPj4gKzIuICAqKkluaXRpYWxpemF0aW9uKio6IENhbGwgYGBEUk1fSU9DVExfUURBX1JFTU9U
RV9TRVNTSU9OX0NSRUFURWBgIHRvDQo+PiArICAgIGVzdGFibGlzaCBhIHNlc3Npb24gYW5kIGNy
ZWF0ZSBhIHByb2Nlc3MgY29udGV4dCBvbiB0aGUgRFNQLg0KPj4gKzMuICAqKk1lbW9yeSoqOiBB
bGxvY2F0ZSBidWZmZXJzIHZpYSBgYERSTV9JT0NUTF9RREFfR0VNX0NSRUFURWBgIG9yIGltcG9y
dA0KPj4gKyAgICBETUEtQlVGcyAoUFJJTUUgZmQpIGZyb20gb3RoZXIgZHJpdmVycyB1c2luZyBg
YERSTV9JT0NUTF9QUklNRV9GRF9UT19IQU5ETEVgYC4NCj4+ICs0LiAgKipFeGVjdXRpb24qKjog
VXNlIGBgRFJNX0lPQ1RMX1FEQV9SRU1PVEVfSU5WT0tFYGAgdG8gcGFzcyBhcmd1bWVudHMgYW5k
DQo+PiArICAgIGV4ZWN1dGUgZnVuY3Rpb25zIG9uIHRoZSBEU1AuDQo+PiArNS4gICoqQ2xlYW51
cCoqOiBDbG9zZSBmaWxlIGRlc2NyaXB0b3JzIHRvIGF1dG9tYXRpY2FsbHkgcmVsZWFzZSByZXNv
dXJjZXMgYW5kDQo+PiArICAgIGRldGFjaCB0aGUgc2Vzc2lvbi4NCj4gDQo+IEknZCBoYXZlIGV4
cGVjdGVkIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgYWN0dWFsIGV4YW1wbGUuIEkuZS4gY2xvbmUg
dGhlDQo+IGFwcCBmcm9tIGh0dHBzOi8vdGhlLmFkZHIsIHByZXBhcmUgY2xhbmcgPj0gTk4uTU0s
IFFBSUMgKGh0dHBzOi8vZm9vKSwNCj4gcnVuIG1ha2UsIHJ1biB0aGUgYXBwLCBjaGVjayB0aGUg
cmVzdWx0cy4gSSdkIHJlbWluZCB0aGF0IERSTSBBY2NlbCBoYXMNCj4gYSB2ZXJ5IHNwZWNpZmlj
IHJlcXVpcmVtZW50IG9mIGhhdmluZyB0aGUgd29ya2luZyB0b29saGFpbiBpbiB0aGUNCj4gb3Bl
bi1zb3VyY2UuDQphY2s+DQo+PiArDQo+PiArSW50ZXJuYWwgSW1wbGVtZW50YXRpb24NCj4+ICs9
PT09PT09PT09PT09PT09PT09PT09PQ0KPj4gKw0KPj4gK01lbW9yeSBNYW5hZ2VtZW50DQo+PiAr
LS0tLS0tLS0tLS0tLS0tLS0NCj4+ICtUaGUgZHJpdmVyJ3MgbWVtb3J5IG1hbmFnZXIgY3JlYXRl
cyB2aXJ0dWFsICJJT01NVSBkZXZpY2VzIiB0aGF0IG1hcCB0bw0KPj4gK2hhcmR3YXJlIGNvbnRl
eHQgYmFua3MuIFRoaXMgYWxsb3dzIHRoZSBkcml2ZXIgdG8gbWFuYWdlIG11bHRpcGxlIGlzb2xh
dGVkDQo+PiArYWRkcmVzcyBzcGFjZXMuIFRoZSBpbXBsZW1lbnRhdGlvbiB1c2VzIGEgRE1BLWNv
aGVyZW50IGJhY2tlbmQgdG8gZW5zdXJlIGRhdGEgY29uc2lzdGVuY3kNCj4+ICtiZXR3ZWVuIHRo
ZSBDUFUgYW5kIERTUCB3aXRob3V0IG1hbnVhbCBjYWNoZSBtYWludGVuYW5jZSBpbiBtb3N0IGNh
c2VzLg0KPiANCj4gR0VNIHVzYWdlPw0KSSdsbCBhZGQgdGhlIGRldGFpbHMgaGVyZS4+DQo+PiAr
DQo+PiArRGVidWdnaW5nDQo+PiArPT09PT09PT09DQo+PiArVGhlIGRyaXZlciBpbmNsdWRlcyBl
eHRlbnNpdmUgZHluYW1pYyBkZWJ1ZyBzdXBwb3J0LiBFbmFibGUgaXQgdmlhIHRoZQ0KPj4gK2tl
cm5lbCdzIGR5bmFtaWMgZGVidWcgY29udHJvbDoNCj4+ICsNCj4+ICsuLiBjb2RlLWJsb2NrOjog
YmFzaA0KPj4gKw0KPj4gKyAgICBlY2hvICJmaWxlIGRyaXZlcnMvYWNjZWwvcWRhLyogK3AiID4g
L3N5cy9rZXJuZWwvZGVidWcvZHluYW1pY19kZWJ1Zy9jb250cm9sDQo+PiArDQo+PiArVGVzdGlu
Zw0KPj4gKz09PT09PT0NCj4+ICtUaGUgUURBIGRyaXZlciBjYW4gYmUgZXhlcmNpc2VkIHVzaW5n
IHRoZSBgYGZhc3RycGNfdGVzdGBgIHV0aWxpdHkgZnJvbSB0aGUNCj4+ICtGYXN0UlBDIHVzZXJz
cGFjZSBsaWJyYXJ5LiBSdW4gdGhlIHRlc3QgYXBwbGljYXRpb246DQo+IA0KPiBwb2ludGVyDQph
Y2suPg0KPj4gKw0KPj4gKy4uIGNvZGUtYmxvY2s6OiBiYXNoDQo+PiArDQo+PiArICAgIGZhc3Ry
cGNfdGVzdCAtZCAzIC1VIDEgLXQgbGludXggLWEgdjY4DQo+PiArDQo+PiArKipPcHRpb25zKioN
Cj4+ICsNCj4+ICtgYC1kIGRvbWFpbmBgDQo+PiArICAgIFNlbGVjdCB0aGUgRFNQIGRvbWFpbiB0
byBydW4gb246DQo+PiArDQo+PiArICAgICogYGAwYGAg4oCUIEFEU1ANCj4+ICsgICAgKiBgYDFg
YCDigJQgTURTUA0KPj4gKyAgICAqIGBgMmBgIOKAlCBTRFNQDQo+PiArICAgICogYGAzYGAg4oCU
IENEU1AgKihkZWZhdWx0IG9uIHRhcmdldHMgd2l0aCBDRFNQKSoNCj4+ICsNCj4+ICtgYC1VIHVu
c2lnbmVkX1BEYGANCj4+ICsgICAgU2VsZWN0IHNpZ25lZCBvciB1bnNpZ25lZCBwcm90ZWN0aW9u
IGRvbWFpbjoNCj4+ICsNCj4+ICsgICAgKiBgYDBgYCDigJQgc2lnbmVkIFBEDQo+PiArICAgICog
YGAxYGAg4oCUIHVuc2lnbmVkIFBEICooZGVmYXVsdCkqDQo+PiArDQo+PiArYGAtdCB0YXJnZXRg
YA0KPj4gKyAgICBUYXJnZXQgcGxhdGZvcm06IGBgYW5kcm9pZGBgIG9yIGBgbGludXhgYCAqKGRl
ZmF1bHQ6IGxpbnV4KSoNCj4+ICsNCj4+ICtgYC1hIGFyY2hfdmVyc2lvbmBgDQo+PiArICAgIERT
UCBhcmNoaXRlY3R1cmUgdmVyc2lvbiwgZS5nLiBgYHY2OGBgLCBgYHY3NWBgICooZGVmYXVsdDog
djY4KSoNCj4+DQo+PiAtLSANCj4+IDIuMzQuMQ0KPj4NCj4+DQo+IA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
