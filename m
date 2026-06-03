Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CILQIJNIKWpNTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:20:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFFE668AD8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:20:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=Bz4g0mOG;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AC4540A7D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:20:50 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 919EB3F79C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:22:41 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65318MU71260383
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4apj65DJiSqJHn1+surZiEdopCJDEvIR6E6yf1J3f8k=; b=Bz4g0mOG1L5kTl0F
	v/yspg6vTGPVLHC5Rn6kp+l1tQldIBBwPt4uOLiZoDrumw7DmxQOFFtP3YMzkPGr
	hRB6uHLewPOlLVJir+yV+XZeAKDkOniIN2yw3xHV+6NVtVaN6IfgtfMIo58j9V+m
	o+khF1upABbERcMQbyIEDPHAhV7X0k3UCHF0eOkm0A22nM6NXd9sWZma4N3qvblc
	fUUVWDLzWHnkJnhBwn6Y/KEUxHtB1201x719i/66+aJu14mHRGPf8BBxFtjIQe2t
	H/DmtAwIPMe1MFg9B/CJwYXqRZPSUazR3iVeeQzb37GJ6WlJP4AhzFtfi2dBnxDj
	+5xI+g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejabggsd5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:22:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2befec3fd8fso44542495ad.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780464160; x=1781068960; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4apj65DJiSqJHn1+surZiEdopCJDEvIR6E6yf1J3f8k=;
        b=aTyLpKGrvVKlJOaV1KUYOxaEfiviHqdfiv1iw6SHWmHcSK0LscZfFtzMsQFmMyWtRn
         XZG/8pT1SFMXc688Y25jFcdw53g0hO9u8zH815k0JOaxs6RbepNWcPfxZ1O8VWiDKggO
         yq5j9UVJdAFJDT67kPw+WEv+5DjZ8017M0/CS92D+tleBbIR4hweeNXI1I3ccias9jbJ
         gCprd9x8HLL84qV+5En01xcB3XI2GQvDT19oAvwtNqrNCUD1o21rIYSdK0fuNGiniYjc
         KURa/XwR9/vCQDGRxQr2K7YVqx6CtwV0Qmhr+hARlDu4gfKJx8T/gLpqxyV/Tt7aKTY9
         rUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780464160; x=1781068960;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4apj65DJiSqJHn1+surZiEdopCJDEvIR6E6yf1J3f8k=;
        b=c1EBHlmvF/j1rgBHvizECNnEAbP4nPTTyBenY8CMMYuEzihRafO7NLQ2ISsG5ei/Dr
         oni95LV50J89NF+I83o8toO30RKSvsgRiV55PfcWYvKXoJzo7AuEffcrVrRKZyrpwl4t
         GF035KxQSieaktIXAlj254qRPvNdwx58Xvjah6Lho66LGL1iGqaZPGEwY2UXTL1lI4L4
         rUaYpXVh24paWuWG3YxAfx5JQrzXs8qrkY1J+VelmuX1Zhp1/rsZvqAH6nuh5hKygBCT
         gm4usCjFI7zwLTHaIRXRPC/N4kbyEQGx7AAXOfl4PPhfqQKYL+tDkj37vzGxuyRgEgn/
         iG5Q==
X-Forwarded-Encrypted: i=1; AFNElJ+oE4ppAnD66wdAVEbGrXLZgi7rpUsdTBV9S9LL8n1/9iJrHMqjt6jyNaSc7peYO4NWd8VERjrlcH9mPRkN@lists.linaro.org
X-Gm-Message-State: AOJu0Yzriz9AyERAXOD6Mvk7DmuDl4+2wIQ+yuacHX5iG3yoSXerl+ld
	E6uB5Iz4xNkHLqeFTLYR7Mn5Pio8esvE5FXGhWfZ46IhP101qURg3UVLPKS8XcNrZlUFAcroNxV
	k9zKtamOgAAF4VCganhmiBnssz5OMKiyVb8glGIyfKre5P9as2puET0av4yuQ0iYVQusuwQ==
X-Gm-Gg: Acq92OFAOnYXaEgvqQ2V8/+h1sj4NUrw61glKjMJBuwQYotDyUHFiy1YaxLD2VTVgQW
	wNE/UPseHsaVDpVhMpAWLtGHVTj6Qz658ARdfYfbVsx9LWXPdKB1cVCVMV8W5dbtdCiJumuVBFa
	vhOkybGuk4HH7QNaxSYmC14pOUeQGylA8sb3wf8d43B4Qt0StRkHLlExl+rJ781z7gq2IJUm0EF
	Wub00N1Noo1sdREizqdy6YJeC0ZYnkr0UHUzszuhO7cLRFF+dPWiVyOTbLfqAourEnnWxaI15fs
	BaUHGoEIxWeZddRXxK6wzBeMRrY981w0soIw3KQ1qk5QSb1ezYr+SDGnT9UsNWESSLiayUs5/Xd
	UE63/LnJASePqA604SlBEYr7QVRy1D6am7tfhdM8RIEElxyWtbqLWDtF9abfz
X-Received: by 2002:a17:903:384d:b0:2c0:ca99:3d8b with SMTP id d9443c01a7336-2c1646ee9ffmr20964085ad.40.1780464159578;
        Tue, 02 Jun 2026 22:22:39 -0700 (PDT)
X-Received: by 2002:a17:903:384d:b0:2c0:ca99:3d8b with SMTP id d9443c01a7336-2c1646ee9ffmr20963525ad.40.1780464158991;
        Tue, 02 Jun 2026 22:22:38 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d211sm10928475ad.3.2026.06.02.22.22.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:22:38 -0700 (PDT)
Message-ID: <9879f670-8a23-407b-ab45-673904ad4a86@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 10:52:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-2-b2d984c297f8@oss.qualcomm.com>
 <paiohsil5pmvm7cf6jxrhaj2225bgvlt3scrag4x6gbkyosow5@l4tbakbnxcvo>
 <CAPsqS2Tt0JbHhJLHBsbJ2YfZW913WNfoSXpSa+8TD1T9CV8V3g@mail.gmail.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <CAPsqS2Tt0JbHhJLHBsbJ2YfZW913WNfoSXpSa+8TD1T9CV8V3g@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=R6sz39RX c=1 sm=1 tr=0 ts=6a1fba20 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=DISFzqtZAAAA:8 a=EUspDBNiAAAA:8 a=jjORMhuGWfTR70FdTIQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-GUID: 6JJeb9lUE8GdNEdUjvaBX2nR9yXBrBQG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA0OCBTYWx0ZWRfX9QHrBBur7sFn
 bLWsCfWaak+JPmdRXBaAwmmcTagHeYPK0dFB5r7kW9eiZDWXyzfL8fKoJXPBIwYwcVLCa3o7A+s
 JIyLkQWKX4soVQQanaHXm3ya/pA8PJ0ErBgV20pv9VamNSAnJ2QnXOEyGTsX8Md0nVFfh09EPMx
 0Pt8HlNyCgXO2WPSY7CfVOkNjMCW0t1sSJrcJErJC/ZiUIo0035SgS1SpjnhzZFNhK9D4BrQ6nP
 I413RUppAwwVzplmtivWHU3Pw6xYSuoIi5OMwVVYRzd2iSL+Xi9cvmexmxpx2gOcD70uLnznQqF
 op1EsEnVBHcmGP7bmualCSPcUP0TtFmWYMT9BTvASRggJ6DK7ZiF/0QSAT3WtKalZXtq+N+7ssn
 cMU38KXXjq8OraWdSd6uPwNV8Nr43VL08atKZ/zEENB1rYpCb3LMBACTF8J6gJwm0Vwyy9yA7vE
 2FsnyBE+13kXYOZQBoA==
X-Proofpoint-ORIG-GUID: 6JJeb9lUE8GdNEdUjvaBX2nR9yXBrBQG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1011
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030048
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B7WMS4XXDQMFE7UYSOSPYXWUPWTLAZTF
X-Message-ID-Hash: B7WMS4XXDQMFE7UYSOSPYXWUPWTLAZTF
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:20 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] accel/qda: Add QDA driver documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B7WMS4XXDQMFE7UYSOSPYXWUPWTLAZTF/>
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
	DATE_IN_PAST(1.00)[173];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:dmitry.baryshkov@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[foo:url,linaro.org:email,qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1CFFE668AD8

T24gMjAtMDUtMjAyNiAyMToxNywgVG9tZXUgVml6b3NvIHdyb3RlOg0KPiBPbiBXZWQsIE1heSAy
MCwgMjAyNiBhdCA0OjEy4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdg0KPiA8ZG1pdHJ5LmJhcnlzaGtv
dkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToNCj4+DQo+PiBPbiBUdWUsIE1heSAxOSwgMjAyNiBh
dCAxMTo0NTo1MkFNICswNTMwLCBFa2Fuc2ggR3VwdGEgdmlhIEI0IFJlbGF5IHdyb3RlOg0KPj4+
IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29tbS5jb20+DQo+Pj4N
Cj4+PiBBZGQgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFF1YWxjb21tIERTUCBBY2NlbGVyYXRvciAo
UURBKSBkcml2ZXIgdW5kZXINCj4+PiBEb2N1bWVudGF0aW9uL2FjY2VsL3FkYS8uIFRoZSBkb2N1
bWVudGF0aW9uIGNvdmVycyB0aGUgZHJpdmVyDQo+Pj4gYXJjaGl0ZWN0dXJlLCBHRU0tYmFzZWQg
YnVmZmVyIG1hbmFnZW1lbnQsIElPTU1VIGNvbnRleHQgYmFuaw0KPj4+IGlzb2xhdGlvbiwgYW5k
IHRoZSBSUE1zZyB0cmFuc3BvcnQgbGF5ZXIuDQo+Pj4NCj4+PiBUaGUgdXNlci1zcGFjZSBBUEkg
c2VjdGlvbiBkZXNjcmliZXMgdGhlIERSTSBJT0NUTHMgZm9yIHNlc3Npb24NCj4+PiBtYW5hZ2Vt
ZW50LCBHRU0gYnVmZmVyIGFsbG9jYXRpb24sIGFuZCByZW1vdGUgcHJvY2VkdXJlIGludm9jYXRp
b24gdmlhDQo+Pj4gdGhlIEZhc3RSUEMgcHJvdG9jb2wsIGFsb25nIHdpdGggYSB0eXBpY2FsIGFw
cGxpY2F0aW9uIGxpZmVjeWNsZQ0KPj4+IGV4YW1wbGUuIFNlY3Rpb25zIGZvciBkeW5hbWljIGRl
YnVnIGFuZCBiYXNpYyB0ZXN0aW5nIGFyZSBhbHNvDQo+Pj4gaW5jbHVkZWQuDQo+Pj4NCj4+PiBX
aXJlIHRoZSBuZXcgZG9jdW1lbnRhdGlvbiBpbnRvIHRoZSBDb21wdXRlIEFjY2VsZXJhdG9ycyBp
bmRleCBhdA0KPj4+IERvY3VtZW50YXRpb24vYWNjZWwvaW5kZXgucnN0Lg0KPj4+DQo+Pj4gQXNz
aXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtNC02LXNvbm5ldA0KPj4+IFNpZ25lZC1vZmYtYnk6IEVr
YW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29tbS5jb20+DQo+Pj4gLS0tDQo+Pj4g
IERvY3VtZW50YXRpb24vYWNjZWwvaW5kZXgucnN0ICAgICB8ICAgMSArDQo+Pj4gIERvY3VtZW50
YXRpb24vYWNjZWwvcWRhL2luZGV4LnJzdCB8ICAxMyArKysrDQo+Pj4gIERvY3VtZW50YXRpb24v
YWNjZWwvcWRhL3FkYS5yc3QgICB8IDE0NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKw0KPj4+ICAzIGZpbGVzIGNoYW5nZWQsIDE2MCBpbnNlcnRpb25zKCspDQo+Pj4NCj4+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hY2NlbC9pbmRleC5yc3QgYi9Eb2N1bWVudGF0
aW9uL2FjY2VsL2luZGV4LnJzdA0KPj4+IGluZGV4IGNiYzdkNGMzODc2YS4uNTkwMWVhN2Y3ODRj
IDEwMDY0NA0KPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vYWNjZWwvaW5kZXgucnN0DQo+Pj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9hY2NlbC9pbmRleC5yc3QNCj4+PiBAQCAtMTAsNCArMTAsNSBAQCBD
b21wdXRlIEFjY2VsZXJhdG9ycw0KPj4+ICAgICBpbnRyb2R1Y3Rpb24NCj4+PiAgICAgYW1keGRu
YS9pbmRleA0KPj4+ICAgICBxYWljL2luZGV4DQo+Pj4gKyAgIHFkYS9pbmRleA0KPj4+ICAgICBy
b2NrZXQvaW5kZXgNCj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hY2NlbC9xZGEvaW5k
ZXgucnN0IGIvRG9jdW1lbnRhdGlvbi9hY2NlbC9xZGEvaW5kZXgucnN0DQo+Pj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQNCj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjAxMzQwMGNmOWMyNQ0KPj4+IC0t
LSAvZGV2L251bGwNCj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2FjY2VsL3FkYS9pbmRleC5yc3QN
Cj4+PiBAQCAtMCwwICsxLDEzIEBADQo+Pj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkNCj4+PiArDQo+Pj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0NCj4+PiArYWNjZWwvcWRhIFF1YWxjb21tIERTUCBBY2NlbGVyYXRvcg0KPj4+ICs9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+Pj4gKw0KPj4+ICtUaGUgUURBIGRyaXZlciBw
cm92aWRlcyBhIERSTSBhY2NlbCBiYXNlZCBpbnRlcmZhY2UgZm9yIFF1YWxjb21tIERTUCBvZmZs
b2FkLg0KPj4+ICtJdCB1c2VzIHRoZSBGYXN0UlBDIHByb3RvY29sIGFuZCBpbnRlZ3JhdGVzIHdp
dGggRFJNIGFuZCBHRU0gaW5mcmFzdHJ1Y3R1cmUNCj4+PiArZm9yIGRldmljZSBhbmQgYnVmZmVy
IG1hbmFnZW1lbnQuDQo+Pj4gKw0KPj4+ICsuLiB0b2N0cmVlOjoNCj4+PiArDQo+Pj4gKyAgIHFk
YQ0KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FjY2VsL3FkYS9xZGEucnN0IGIvRG9j
dW1lbnRhdGlvbi9hY2NlbC9xZGEvcWRhLnJzdA0KPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+
Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi45ZjQ5YWY2ZTZhY2MNCj4+PiAtLS0gL2Rldi9udWxsDQo+
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9hY2NlbC9xZGEvcWRhLnJzdA0KPj4+IEBAIC0wLDAgKzEs
MTQ2IEBADQo+Pj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkNCj4+
PiArDQo+Pj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+PiArUXVh
bGNvbW0gRFNQIEFjY2VsZXJhdG9yIChRREEpIERyaXZlcg0KPj4+ICs9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09DQo+Pj4gKw0KPj4+ICtJbnRyb2R1Y3Rpb24NCj4+PiArPT09
PT09PT09PT09DQo+Pj4gKw0KPj4+ICtUaGUgUURBIGRyaXZlciBpcyBhIERSTSBhY2NlbCBkcml2
ZXIgZm9yIFF1YWxjb21tJ3MgRFNQcy4gSXQgcHJvdmlkZXMgYQ0KPj4+ICtEUk0gYWNjZWwgYmFz
ZWQgaW50ZXJmYWNlIGZvciBRdWFsY29tbSBEU1Agb2ZmbG9hZCwgc3VwcG9ydGluZyB3b3JrbG9h
ZHMNCj4+PiArc3VjaCBhcyBBSSBpbmZlcmVuY2UsIGNvbXB1dGVyIHZpc2lvbiwgYXVkaW8gcHJv
Y2Vzc2luZywgYW5kIHNlbnNvciBvZmZsb2FkDQo+Pj4gK29uIFF1YWxjb21tIFNvQ3MuIEl0IHVz
ZXMgdGhlIEZhc3RSUEMgcHJvdG9jb2wgYW5kIGludGVncmF0ZXMgd2l0aCBEUk0gYW5kDQo+Pj4g
K0dFTSBpbmZyYXN0cnVjdHVyZSBmb3IgZGV2aWNlIGFuZCBidWZmZXIgbWFuYWdlbWVudC4NCj4+
PiArDQo+Pj4gK0tleSBGZWF0dXJlcw0KPj4+ICs9PT09PT09PT09PT0NCj4+PiArDQo+Pj4gKyog
ICAqKkRSTSBhY2NlbCBJbnRlcmZhY2UqKjogRXhwb3NlcyBhIHN0YW5kYXJkIGNoYXJhY3RlciBk
ZXZpY2Ugbm9kZQ0KPj4+ICsgICAgKGUuZy4sIGBgL2Rldi9hY2NlbC9hY2NlbDBgYCkgdmlhIHRo
ZSBEUk0gYWNjZWwgc3Vic3lzdGVtLg0KPj4+ICsqICAgKipGYXN0UlBDIFByb3RvY29sKio6IElt
cGxlbWVudHMgdGhlIEZhc3RSUEMgcHJvdG9jb2wgZm9yIGNvbW11bmljYXRpb24NCj4+PiArICAg
IGJldHdlZW4gdGhlIGFwcGxpY2F0aW9uIHByb2Nlc3NvciBhbmQgdGhlIERTUC4NCj4+PiArKiAg
ICoqR0VNIEJ1ZmZlciBNYW5hZ2VtZW50Kio6IFVzZXMgdGhlIERSTSBHRU0gaW50ZXJmYWNlIGZv
ciBidWZmZXINCj4+PiArICAgIGFsbG9jYXRpb24sIGxpZmVjeWNsZSBtYW5hZ2VtZW50LCBhbmQg
RE1BLUJVRiBpbXBvcnQvZXhwb3J0Lg0KPj4+ICsqICAgKipJT01NVSBJc29sYXRpb24qKjogVXNl
cyBJT01NVSBjb250ZXh0IGJhbmtzIHRvIGVuZm9yY2UgbWVtb3J5IGlzb2xhdGlvbg0KPj4+ICsg
ICAgYmV0d2VlbiBkaWZmZXJlbnQgRFNQIHVzZXIgc2Vzc2lvbnMuDQo+Pj4gKyogICAqKk1vZHVs
YXIgRGVzaWduKio6IENsZWFuIHNlcGFyYXRpb24gYmV0d2VlbiB0aGUgY29yZSBEUk0gbG9naWMs
IHRoZQ0KPj4+ICsgICAgbWVtb3J5IG1hbmFnZXIsIGFuZCB0aGUgUlBNc2ctYmFzZWQgdHJhbnNw
b3J0IGxheWVyLg0KPj4+ICsNCj4+PiArQXJjaGl0ZWN0dXJlDQo+Pj4gKz09PT09PT09PT09PQ0K
Pj4+ICsNCj4+PiArVGhlIFFEQSBkcml2ZXIgY29uc2lzdHMgb2Ygc2V2ZXJhbCBmdW5jdGlvbmFs
IGJsb2NrczoNCj4+PiArDQo+Pj4gKzEuICAqKkNvcmUgRHJpdmVyIChgYHFkYV9kcnZgYCkqKjog
TWFuYWdlcyBkZXZpY2UgcmVnaXN0cmF0aW9uLCBmaWxlIG9wZXJhdGlvbnMsDQo+Pj4gKyAgICBh
bmQgRFJNIGFjY2VsIGludGVncmF0aW9uLg0KPj4+ICsyLiAgKipNZW1vcnkgTWFuYWdlciAoYGBx
ZGFfbWVtb3J5X21hbmFnZXJgYCkqKjogQSBmbGV4aWJsZSBtZW1vcnkgbWFuYWdlbWVudA0KPj4+
ICsgICAgbGF5ZXIgdGhhdCBoYW5kbGVzIElPTU1VIGNvbnRleHQgYmFua3MuIEl0IHN1cHBvcnRz
IHBsdWdnYWJsZSBiYWNrZW5kcw0KPj4+ICsgICAgKHN1Y2ggYXMgRE1BLWNvaGVyZW50KSB0byBh
ZGFwdCB0byBkaWZmZXJlbnQgU29DIG1lbW9yeSBhcmNoaXRlY3R1cmVzLg0KPj4+ICszLiAgKipH
RU0gU3Vic3lzdGVtKio6IEltcGxlbWVudHMgdGhlIERSTSBHRU0gaW50ZXJmYWNlIGZvciBidWZm
ZXIgbWFuYWdlbWVudDoNCj4+PiArDQo+Pj4gKyAgICAqICoqYGBxZGFfZ2VtYGAqKjogQ29yZSBH
RU0gb2JqZWN0IG1hbmFnZW1lbnQsIGluY2x1ZGluZyBhbGxvY2F0aW9uLCBtbWFwDQo+Pj4gKyAg
ICAgIG9wZXJhdGlvbnMsIGFuZCBidWZmZXIgbGlmZWN5Y2xlIG1hbmFnZW1lbnQuDQo+Pj4gKyAg
ICAqICoqYGBxZGFfcHJpbWVgYCoqOiBQUklNRSBpbXBvcnQgZnVuY3Rpb25hbGl0eSBmb3IgRE1B
LUJVRiBpbnRlcm9wZXJhYmlsaXR5DQo+Pj4gKyAgICAgIHdpdGggb3RoZXIga2VybmVsIHN1YnN5
c3RlbXMuDQo+Pj4gKw0KPj4+ICs0LiAgKipUcmFuc3BvcnQgTGF5ZXIgKGBgcWRhX3JwbXNnYGAp
Kio6IEFic3RyYWN0aW9uIG92ZXIgdGhlIFJQTXNnIGZyYW1ld29yaw0KPj4+ICsgICAgdG8gaGFu
ZGxlIGxvdy1sZXZlbCBtZXNzYWdlIHBhc3Npbmcgd2l0aCB0aGUgRFNQIGZpcm13YXJlLg0KPj4+
ICs1LiAgKipDb21wdXRlIEJ1cyAoYGBxZGFfY29tcHV0ZV9idXNgYCkqKjogQSBjdXN0b20gdmly
dHVhbCBidXMgdXNlZCB0bw0KPj4+ICsgICAgZW51bWVyYXRlIGFuZCBtYW5hZ2UgdGhlIHNwZWNp
ZmljIGNvbXB1dGUgY29udGV4dCBiYW5rcyBkZWZpbmVkIGluIHRoZQ0KPj4+ICsgICAgZGV2aWNl
IHRyZWUuIFRoZSBidXMgd2FzIGludHJvZHVjZWQgYmVjYXVzZSBJT01NVSBjb250ZXh0IGJhbmtz
IChDQnMpIGFyZQ0KPj4+ICsgICAgc3ludGhldGljIGNvbnN0cnVjdHMg4oCUIG5vdCByZWFsIHBs
YXRmb3JtIGRldmljZXMg4oCUIG1ha2luZyBhIHBsYXRmb3JtIGRyaXZlcg0KPj4+ICsgICAgYW4g
aW5jb3JyZWN0IGFic3RyYWN0aW9uIGZvciB0aGVtLiBUaGUgZWFybGllciBwbGF0Zm9ybS1kcml2
ZXIgYXBwcm9hY2ggYWxzbw0KPj4+ICsgICAgaGFkIGEgcmFjZSBjb25kaXRpb246IGRldmljZSBu
b2RlcyB3ZXJlIGNyZWF0ZWQgYmVmb3JlIHRoZSBSUE1zZyBjaGFubmVsDQo+Pj4gKyAgICByZXNv
dXJjZXMgd2VyZSBmdWxseSBpbml0aWFsaXplZCwgYW5kIGJlY2F1c2UgYGBwcm9iZWBgIHJ1bnMg
YXN5bmNocm9ub3VzbHksDQo+Pj4gKyAgICBhcHBsaWNhdGlvbnMgY291bGQgb3BlbiBhIENCIGRl
dmljZSBhbmQgYXR0ZW1wdCB0byBzdGFydCBhIHNlc3Npb24gYmVmb3JlDQo+Pj4gKyAgICB0aGUg
dW5kZXJseWluZyB0cmFuc3BvcnQgd2FzIHJlYWR5LiBUaGUgY29tcHV0ZSBidXMgbWFrZXMgQ0Ig
bGlmZXRpbWUNCj4+PiArICAgIGV4cGxpY2l0bHkgc3Vib3JkaW5hdGUgdG8gdGhlIHBhcmVudCBR
REEgZGV2aWNlLCBjbG9zaW5nIHRoYXQgd2luZG93Lg0KPj4+ICs2LiAgKipGYXN0UlBDIENvcmUg
KGBgcWRhX2Zhc3RycGNgYCkqKjogSW1wbGVtZW50cyB0aGUgcHJvdG9jb2wgbG9naWMgZm9yDQo+
Pj4gKyAgICBtYXJzaGFsbGluZyBhcmd1bWVudHMgYW5kIGhhbmRsaW5nIHJlbW90ZSBpbnZvY2F0
aW9ucy4NCj4+PiArDQo+Pj4gK1VzZXItU3BhY2UgQVBJDQo+Pj4gKz09PT09PT09PT09PT09DQo+
Pj4gKw0KPj4+ICtUaGUgZHJpdmVyIGV4cG9zZXMgYSBzZXQgb2YgRFJNLWNvbXBsaWFudCBJT0NU
THM6DQo+Pj4gKw0KPj4+ICsqICAgYGBEUk1fSU9DVExfUURBX1FVRVJZYGA6IFF1ZXJ5IERTUCB0
eXBlIChlLmcuLCAiY2RzcCIsICJhZHNwIikNCj4+PiArICAgIGFuZCBjYXBhYmlsaXRpZXMuDQo+
Pj4gKyogICBgYERSTV9JT0NUTF9RREFfUkVNT1RFX1NFU1NJT05fQ1JFQVRFYGA6IEluaXRpYWxp
emUgYSBuZXcgcHJvY2VzcyBjb250ZXh0DQo+Pj4gKyAgICBvbiB0aGUgRFNQLg0KPj4+ICsqICAg
YGBEUk1fSU9DVExfUURBX1JFTU9URV9JTlZPS0VgYDogU3VibWl0IGEgcmVtb3RlIG1ldGhvZCBp
bnZvY2F0aW9uICh0aGUNCj4+PiArICAgIHByaW1hcnkgZXhlY3V0aW9uIHVuaXQpLg0KPj4+ICsq
ICAgYGBEUk1fSU9DVExfUURBX0dFTV9DUkVBVEVgYDogQWxsb2NhdGUgYSBHRU0gYnVmZmVyIG9i
amVjdCBmb3IgRFNQIHVzYWdlLg0KPj4+ICsqICAgYGBEUk1fSU9DVExfUURBX0dFTV9NTUFQX09G
RlNFVGBgOiBSZXRyaWV2ZSBtbWFwIG9mZnNldHMgZm9yIG1lbW9yeSBtYXBwaW5nLg0KPj4+ICsq
ICAgYGBEUk1fSU9DVExfUURBX1JFTU9URV9NQVBgYCAvIGBgRFJNX0lPQ1RMX1FEQV9SRU1PVEVf
TVVOTUFQYGA6IE1hcCBvciB1bm1hcA0KPj4+ICsgICAgYnVmZmVycyBpbnRvIHRoZSBEU1AncyB2
aXJ0dWFsIGFkZHJlc3Mgc3BhY2UuIEVhY2ggYWNjZXB0cyBhIGBgcmVxdWVzdGBgDQo+Pj4gKyAg
ICBmaWVsZCBzZWxlY3RpbmcgYmV0d2VlbiBhIGxlZ2FjeSBvcGVyYXRpb24gKGBgUURBX01BUF9S
RVFVRVNUX0xFR0FDWWBgIC8NCj4+PiArICAgIGBgUURBX01VTk1BUF9SRVFVRVNUX0xFR0FDWWBg
KSBhbmQgYW4gYXR0cmlidXRlLWJhc2VkIG9wZXJhdGlvbg0KPj4+ICsgICAgKGBgUURBX01BUF9S
RVFVRVNUX0FUVFJgYCAvIGBgUURBX01VTk1BUF9SRVFVRVNUX0FUVFJgYCkuDQo+Pg0KPj4gRXhw
bGFpbiwgd2hhdCBoYXBwZW5zIGluIHRoZSB1c2VycyBkb24ndCBtYXAgdGhlIGJ1ZmZlcnMgaW50
byB0aGUgRFNQDQo+PiBzcGFjZS4gV2lsbCBEUk1fSU9DVExfUURBX1JFTU9URV9JTlZPS0UgaGFu
ZGxlIHRoZSBtYXBwaW5nIG9yIG5vdD8gV2hhdA0KPj4gaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2Vl
biB0aG9zZSB0d28gbW9kZXM/DQo+Pg0KPj4gV291bGQgdGhlIGRyaXZlciBiZW5lZml0IGZyb20g
dXNpbmcgR1BVVk0/DQo+Pg0KPj4+ICsNCj4+PiArVXNhZ2UgRXhhbXBsZQ0KPj4+ICs9PT09PT09
PT09PT09DQo+Pj4gKw0KPj4+ICtBIHR5cGljYWwgbGlmZWN5Y2xlIGZvciBhIHVzZXItc3BhY2Ug
YXBwbGljYXRpb246DQo+Pj4gKw0KPj4+ICsxLiAgKipEaXNjb3ZlcnkqKjogT3BlbiBgYC9kZXYv
YWNjZWwvYWNjZWwqYGAgYW5kIHVzZQ0KPj4+ICsgICAgYGBEUk1fSU9DVExfUURBX1FVRVJZYGAg
dG8gaWRlbnRpZnkgdGhlIERTUCBkb21haW4gc2VydmVkIGJ5IHRoYXQNCj4+PiArICAgIGRldmlj
ZSBub2RlLg0KPj4+ICsyLiAgKipJbml0aWFsaXphdGlvbioqOiBDYWxsIGBgRFJNX0lPQ1RMX1FE
QV9SRU1PVEVfU0VTU0lPTl9DUkVBVEVgYCB0bw0KPj4+ICsgICAgZXN0YWJsaXNoIGEgc2Vzc2lv
biBhbmQgY3JlYXRlIGEgcHJvY2VzcyBjb250ZXh0IG9uIHRoZSBEU1AuDQo+Pj4gKzMuICAqKk1l
bW9yeSoqOiBBbGxvY2F0ZSBidWZmZXJzIHZpYSBgYERSTV9JT0NUTF9RREFfR0VNX0NSRUFURWBg
IG9yIGltcG9ydA0KPj4+ICsgICAgRE1BLUJVRnMgKFBSSU1FIGZkKSBmcm9tIG90aGVyIGRyaXZl
cnMgdXNpbmcgYGBEUk1fSU9DVExfUFJJTUVfRkRfVE9fSEFORExFYGAuDQo+Pj4gKzQuICAqKkV4
ZWN1dGlvbioqOiBVc2UgYGBEUk1fSU9DVExfUURBX1JFTU9URV9JTlZPS0VgYCB0byBwYXNzIGFy
Z3VtZW50cyBhbmQNCj4+PiArICAgIGV4ZWN1dGUgZnVuY3Rpb25zIG9uIHRoZSBEU1AuDQo+Pj4g
KzUuICAqKkNsZWFudXAqKjogQ2xvc2UgZmlsZSBkZXNjcmlwdG9ycyB0byBhdXRvbWF0aWNhbGx5
IHJlbGVhc2UgcmVzb3VyY2VzIGFuZA0KPj4+ICsgICAgZGV0YWNoIHRoZSBzZXNzaW9uLg0KPj4N
Cj4+IEknZCBoYXZlIGV4cGVjdGVkIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgYWN0dWFsIGV4YW1w
bGUuIEkuZS4gY2xvbmUgdGhlDQo+PiBhcHAgZnJvbSBodHRwczovL3RoZS5hZGRyLCBwcmVwYXJl
IGNsYW5nID49IE5OLk1NLCBRQUlDIChodHRwczovL2ZvbyksDQo+PiBydW4gbWFrZSwgcnVuIHRo
ZSBhcHAsIGNoZWNrIHRoZSByZXN1bHRzLiBJJ2QgcmVtaW5kIHRoYXQgRFJNIEFjY2VsIGhhcw0K
Pj4gYSB2ZXJ5IHNwZWNpZmljIHJlcXVpcmVtZW50IG9mIGhhdmluZyB0aGUgd29ya2luZyB0b29s
aGFpbiBpbiB0aGUNCj4+IG9wZW4tc291cmNlLg0KPiANCj4gV2UgaGF2ZSBiZWVuIGdldHRpbmcg
c3VibWlzc2lvbnMgbGF0ZWx5IHRoYXQgZG9uJ3QgZnVsZmlsbCB0aGF0DQo+IHJlcXVpcmVtZW50
IHNvIEkgd2lsbCBwb2ludCB0byB0aGUgcHJlY2lzZSBwYXJ0IG9mIHRoZSBkb2N1bWVudGF0aW9u
DQo+IHRoYXQgZXhwbGFpbnMgaXQ6DQo+IA0KPiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9o
dG1sL2xhdGVzdC9ncHUvZHJtLXVhcGkuaHRtbCNvcGVuLXNvdXJjZS11c2Vyc3BhY2UtcmVxdWly
ZW1lbnRzDQo+IA0KPiBGb3IgYW4gZXhhbXBsZSBvZiBhIHN1Ym1pc3Npb25zIHRoYXQgY29tcGxp
ZXMsIHNlZToNCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDEx
NC10aGFtZXMtdjItMC1lOTRhNjYzNmUwNTBAdG9tZXV2aXpvc28ubmV0Lw0KPiANCj4gTW9zdCBp
bXBvcnRhbnRseSwgbm90aWNlIGhvdyB0aGUgcHJvcG9zZWQgVGhhbWVzIE1lc2EgZHJpdmVyIGdl
bmVyYXRlcw0KPiBtYWNoaW5lIGNvZGUgZm9yIGFsbCB0aGUgaGFyZHdhcmUgdW5pdHMsIGFuZCBk
b2Vzbid0IHVzZSBhbnkgYmxvYiBmb3INCj4gdGhhdC4NCj4gDQpJIGJlbGlldmUgUURBIGNoZWNr
cyBhbGwgYm94ZXMgZm9yIGFjY2VsLCBhcyB0aGVyZSBpcyBhdmFpbGFibGUNCm9wZW5zb3VyY2Ug
dXNlcnNwYWNlLCBvcGVuc291cmNlIFFBSUMgY29tcGlsZXIgZm9yIElETCBjb21waWxhdGlvbiBh
bmQNCkxMVk0gc3VwcG9ydHMgaGV4YWdvbiBhcmNoLg0KDQpJJ2xsIHRyeSBhZGRpbmcgdGhlc2Ug
ZGV0YWlscyBhcyB3ZWxsLg0KDQpUaGFua3MhPiBSZWdhcmRzLA0KPiANCj4gVG9tZXUNCj4gDQo+
Pj4gKw0KPj4+ICtJbnRlcm5hbCBJbXBsZW1lbnRhdGlvbg0KPj4+ICs9PT09PT09PT09PT09PT09
PT09PT09PQ0KPj4+ICsNCj4+PiArTWVtb3J5IE1hbmFnZW1lbnQNCj4+PiArLS0tLS0tLS0tLS0t
LS0tLS0NCj4+PiArVGhlIGRyaXZlcidzIG1lbW9yeSBtYW5hZ2VyIGNyZWF0ZXMgdmlydHVhbCAi
SU9NTVUgZGV2aWNlcyIgdGhhdCBtYXAgdG8NCj4+PiAraGFyZHdhcmUgY29udGV4dCBiYW5rcy4g
VGhpcyBhbGxvd3MgdGhlIGRyaXZlciB0byBtYW5hZ2UgbXVsdGlwbGUgaXNvbGF0ZWQNCj4+PiAr
YWRkcmVzcyBzcGFjZXMuIFRoZSBpbXBsZW1lbnRhdGlvbiB1c2VzIGEgRE1BLWNvaGVyZW50IGJh
Y2tlbmQgdG8gZW5zdXJlIGRhdGEgY29uc2lzdGVuY3kNCj4+PiArYmV0d2VlbiB0aGUgQ1BVIGFu
ZCBEU1Agd2l0aG91dCBtYW51YWwgY2FjaGUgbWFpbnRlbmFuY2UgaW4gbW9zdCBjYXNlcy4NCj4+
DQo+PiBHRU0gdXNhZ2U/DQo+Pg0KPj4+ICsNCj4+PiArRGVidWdnaW5nDQo+Pj4gKz09PT09PT09
PQ0KPj4+ICtUaGUgZHJpdmVyIGluY2x1ZGVzIGV4dGVuc2l2ZSBkeW5hbWljIGRlYnVnIHN1cHBv
cnQuIEVuYWJsZSBpdCB2aWEgdGhlDQo+Pj4gK2tlcm5lbCdzIGR5bmFtaWMgZGVidWcgY29udHJv
bDoNCj4+PiArDQo+Pj4gKy4uIGNvZGUtYmxvY2s6OiBiYXNoDQo+Pj4gKw0KPj4+ICsgICAgZWNo
byAiZmlsZSBkcml2ZXJzL2FjY2VsL3FkYS8qICtwIiA+IC9zeXMva2VybmVsL2RlYnVnL2R5bmFt
aWNfZGVidWcvY29udHJvbA0KPj4+ICsNCj4+PiArVGVzdGluZw0KPj4+ICs9PT09PT09DQo+Pj4g
K1RoZSBRREEgZHJpdmVyIGNhbiBiZSBleGVyY2lzZWQgdXNpbmcgdGhlIGBgZmFzdHJwY190ZXN0
YGAgdXRpbGl0eSBmcm9tIHRoZQ0KPj4+ICtGYXN0UlBDIHVzZXJzcGFjZSBsaWJyYXJ5LiBSdW4g
dGhlIHRlc3QgYXBwbGljYXRpb246DQo+Pg0KPj4gcG9pbnRlcg0KPj4NCj4+PiArDQo+Pj4gKy4u
IGNvZGUtYmxvY2s6OiBiYXNoDQo+Pj4gKw0KPj4+ICsgICAgZmFzdHJwY190ZXN0IC1kIDMgLVUg
MSAtdCBsaW51eCAtYSB2NjgNCj4+PiArDQo+Pj4gKyoqT3B0aW9ucyoqDQo+Pj4gKw0KPj4+ICtg
YC1kIGRvbWFpbmBgDQo+Pj4gKyAgICBTZWxlY3QgdGhlIERTUCBkb21haW4gdG8gcnVuIG9uOg0K
Pj4+ICsNCj4+PiArICAgICogYGAwYGAg4oCUIEFEU1ANCj4+PiArICAgICogYGAxYGAg4oCUIE1E
U1ANCj4+PiArICAgICogYGAyYGAg4oCUIFNEU1ANCj4+PiArICAgICogYGAzYGAg4oCUIENEU1Ag
KihkZWZhdWx0IG9uIHRhcmdldHMgd2l0aCBDRFNQKSoNCj4+PiArDQo+Pj4gK2BgLVUgdW5zaWdu
ZWRfUERgYA0KPj4+ICsgICAgU2VsZWN0IHNpZ25lZCBvciB1bnNpZ25lZCBwcm90ZWN0aW9uIGRv
bWFpbjoNCj4+PiArDQo+Pj4gKyAgICAqIGBgMGBgIOKAlCBzaWduZWQgUEQNCj4+PiArICAgICog
YGAxYGAg4oCUIHVuc2lnbmVkIFBEICooZGVmYXVsdCkqDQo+Pj4gKw0KPj4+ICtgYC10IHRhcmdl
dGBgDQo+Pj4gKyAgICBUYXJnZXQgcGxhdGZvcm06IGBgYW5kcm9pZGBgIG9yIGBgbGludXhgYCAq
KGRlZmF1bHQ6IGxpbnV4KSoNCj4+PiArDQo+Pj4gK2BgLWEgYXJjaF92ZXJzaW9uYGANCj4+PiAr
ICAgIERTUCBhcmNoaXRlY3R1cmUgdmVyc2lvbiwgZS5nLiBgYHY2OGBgLCBgYHY3NWBgICooZGVm
YXVsdDogdjY4KSoNCj4+Pg0KPj4+IC0tDQo+Pj4gMi4zNC4xDQo+Pj4NCj4+Pg0KPj4NCj4+IC0t
DQo+PiBXaXRoIGJlc3Qgd2lzaGVzDQo+PiBEbWl0cnkNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
