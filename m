Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tR6yGWpKKWqLTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AE4668CBC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=Bo+9GAkH;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b="M8bdJ/Hj";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1386940A96
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:28:41 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 5E70C3F960
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jun 2026 05:14:40 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6580Ee221575383
	for <linaro-mm-sig@lists.linaro.org>; Mon, 8 Jun 2026 05:14:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	06YKS2t9ahDNR8mpib/s6eXRS8K7e5yjLmLG8WJkTSk=; b=Bo+9GAkH3R1PpgxK
	saJ2dHX62iPorEkfzfK4XOBg/Mg3Pwr/8C/EG9G4QXVHmf8kB967RpcnR/3yCTp0
	fXMST16hMyZrpH/XvN270nmSWNqYapUK4NK/KEwlcnabNN4tKFY5l89LGpC+ky1P
	nLYoadq0uWNQPSw5PMvJoigxQhh/R86vzD6gn+f2zDnyK9VlIkoppZUmKs/NtQbx
	tMbRK75T+AM6nw0YVZe2TsrwcF2ddjOiQIjoTQq8AhOTHLA5NJzJ3ktIfSw9ajPt
	IVlTQVWeqvlyYDSZ34nhGodkPDc3JH2srN3Q1eEW0OaZDBPPa0qxHXUjSxAqsUrM
	RCAMDg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4em98cxd9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jun 2026 05:14:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2bf1dece2ecso40279995ad.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Jun 2026 22:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780895678; x=1781500478; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=06YKS2t9ahDNR8mpib/s6eXRS8K7e5yjLmLG8WJkTSk=;
        b=M8bdJ/HjMMTT5/RpiIm4o6TXWmwJrPHw7ALFioIxq+mBvWa4zylKYFevLjg8xHESEn
         nYyLvJx/A97tuArZf+A8qaypdhHYRfR/EqIq4jpCaSp2WUh9zfRFVhgcVUKO9+bUx9VQ
         Lua37ZGCQcDSl+1e5Bnn4dQb2PjdwYj/K5hOSauIZ7O+HC3Vlq9pgWQN9r2VG56fF6vK
         u8VpRyuPCizqN/dRsaaqpq+1mxEB8iYcWrLYh9S0myTIJHM4ijSOu/gidUfg24ziUxxn
         dcJmFdVQ/UxCSEyouorLJfx2bfxzpuQC12/cLWdWdeefYkpwOcxRCmMVgN6n6tnoME9W
         5qqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780895678; x=1781500478;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=06YKS2t9ahDNR8mpib/s6eXRS8K7e5yjLmLG8WJkTSk=;
        b=c6TlH5dwJAur31zLL3fuUvcoZ7qurxFwQ+GGSnGXaC8Cutmvxx8mcPLLlv0mr7GnIj
         BNz+8S3zE5T/W0QMamKUyRTOV0+4qOOFtk594w6dGze0d1dZGD6pue/N0mfHb4JO2f2X
         iSSxrZEiSO4usItKZo2XGBspS6BN/Nj7E6ATXERVQxoiA3v05MtK3K/9ZPQJcrl91Xwr
         kE8W/smezSIGAyHcmuWSj6ZFDNkY4/7tBPioTwVHrq7MQvK+Dt5HeOHiZbaysFltzHQF
         zWEH2zWmki5GO1DWFRTyLM19xg5MR+Eppf0MFfwCwkY1Mp9078/I3uHtCjvtu1v3Hvdk
         wELg==
X-Forwarded-Encrypted: i=1; AFNElJ9V6giqTq3IzKw8dmnWcC4xxc2Zz+OcDcmQJjzAV8wEc4YNO6KM0pkKGFda/5GZg5C8p3dBinaIl/BcsGEr@lists.linaro.org
X-Gm-Message-State: AOJu0YxRM9qwNEcOTPTr8MkFzZQqQfDOty5eNqAVWNp15G9AWQLjFlJX
	rkFm6BRoNya6Co+wSzToiucQRXsyvCq82+CC2uA0kH1NIdRpTw8xSaqn/1fUtv6WHny0O6rbuqQ
	kAvpkpkzvVWob4vtOiN3aZ9TVeZw/fypIAFs43T8H5pgE5qyQGYzjg9XQtNFUkRxjo5FsWw==
X-Gm-Gg: Acq92OEQ9+V/He1uKI+5CPs5hsL3UILRsuoSrtNHniY5Wwi+dhVzzUVzYK3C7pChTyY
	A2roZT1ILMPUa4usrbMECurfMc8d5CD6WGpK9AqaY3LlwkBlAOOgfSi8/RipuIYw5pjMZBVxpUM
	stRNyBWENUqpcrvxmol7+cuaNbVlcqe0OiDD2s7BDrf+ud2X5YgjsES9iEUik9PRW0i/9+bq/UA
	WpL8ExuUBt6cV5v99n0aGQPy+X4gclPS7yiRSqyTfzoQezpFDRpIJbbnhPetgujs8kJz9rfoOlT
	FvCTV+H+0bmvHqS9/e7TDO3+YxvnyHXCnYDIJMf7XjedYNk5QlA2ZxsnMQNV2FynqitacoqDbby
	wk4Ao/gOVzBSgLsfCNVmjQbwda9pEE2BDGXLHoDC3INGhVhqE5wRWsWRcdjiH+g==
X-Received: by 2002:a17:903:2ac3:b0:2c0:b932:866e with SMTP id d9443c01a7336-2c1e8934f70mr152931055ad.27.1780895678331;
        Sun, 07 Jun 2026 22:14:38 -0700 (PDT)
X-Received: by 2002:a17:903:2ac3:b0:2c0:b932:866e with SMTP id d9443c01a7336-2c1e8934f70mr152930605ad.27.1780895677843;
        Sun, 07 Jun 2026 22:14:37 -0700 (PDT)
Received: from [10.204.79.117] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c1664a67b0sm169055115ad.80.2026.06.07.22.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2026 22:14:37 -0700 (PDT)
Message-ID: <dd014e3b-96fa-4019-a1b7-5826a877b87e@oss.qualcomm.com>
Date: Mon, 8 Jun 2026 10:44:28 +0530
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
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-11-b2d984c297f8@oss.qualcomm.com>
 <3dddb7e8-5837-4038-9823-ce419cb49ec2@amd.com>
 <e465ed15-1568-467b-ac6b-94f903b46776@oss.qualcomm.com>
 <0feaad40-8bde-46c4-a251-07a1bd6ac79d@amd.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <0feaad40-8bde-46c4-a251-07a1bd6ac79d@amd.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA0NSBTYWx0ZWRfX3cMJh4Jm5/iP
 aNZp5QcEi7NiaX+HnG/y4QH7KVUbO0qKAIivDt/J7Nlgz4BL/XJTNJj0pbm+AerblfN1EfkBWo+
 cWqz3/L+3XlQv+tAa/4wnxWmrrwoeWZiZN+Jzr64ux9TS0dQa+D6PiSHzkiiCYtkQqIcxUQNHMn
 yPUhBS2sTW+YyQzjWmOdmlkdXpN5Z8HMcmgrZ7EGTSUWzTcKh9iAGx35Xd/FMGFlswq7+qhlMR0
 hX+wv3CCFVXQimMwvqANtx8Z6kmYrCe8rPF+3DxK+U7dhV7LamRyt7x8ZhAjO6T8Ds6nW/TXBbJ
 /czXlX34F7WtZvJZ8QJvSBpUD+SguaRzhmlX5hMyIXIYUTup/woYGvuR/AKNpL5vL7DHaas6/j1
 DHFjjwCnuVQCHBbStF5p9XZtQJWk5s2Ta0KHJW8za1kEJ3yp4ou/s21KG75xKFasauuH9KmWUDA
 //XJeyhBK2BcyJN3nbQ==
X-Proofpoint-ORIG-GUID: vCS6aYoHbjFa56XrfrOkyxTU-uc_p-Nm
X-Proofpoint-GUID: vCS6aYoHbjFa56XrfrOkyxTU-uc_p-Nm
X-Authority-Analysis: v=2.4 cv=A/pc+aWG c=1 sm=1 tr=0 ts=6a264fbe cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=h427B1VOWG0w3MIzYIMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_01,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606080045
X-Spamd-Bar: ---
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RMNRWGTF6OTN6CJYOHOCVCDOFYQTTQQE
X-Message-ID-Hash: RMNRWGTF6OTN6CJYOHOCVCDOFYQTTQQE
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, dmitry.baryshkov@oss.qualcomm.com, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/15] accel/qda: Add PRIME DMA-BUF import support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RMNRWGTF6OTN6CJYOHOCVCDOFYQTTQQE/>
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
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[54];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3AE4668CBC

T24gMDMtMDYtMjAyNiAxOToxMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNi8zLzI2
IDA4OjExLCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+PiBPbiAxOS0wNS0yMDI2IDEyOjI1LCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IE9uIDUvMTkvMjYgMDg6MTYsIEVrYW5zaCBHdXB0YSB2
aWEgQjQgUmVsYXkgd3JvdGU6DQo+Pj4+IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRh
QG9zcy5xdWFsY29tbS5jb20+DQo+IC4uLg0KPj4+PiArc3RhdGljIGludCBxZGFfbWVtb3J5X21h
bmFnZXJfbWFwX2ltcG9ydGVkKHN0cnVjdCBxZGFfbWVtb3J5X21hbmFnZXIgKm1lbV9tZ3IsDQo+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgcWRh
X2dlbV9vYmogKmdlbV9vYmosDQo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgcWRhX2lvbW11X2RldmljZSAqaW9tbXVfZGV2KQ0KPj4+PiArew0K
Pj4+PiArICAgICAgIHN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQo+Pj4+ICsgICAgICAgZG1hX2Fk
ZHJfdCBkbWFfYWRkcjsNCj4+Pj4gKw0KPj4+PiArICAgICAgIGlmICghZ2VtX29iai0+aXNfaW1w
b3J0ZWQgfHwgIWdlbV9vYmotPnNndCB8fCAhaW9tbXVfZGV2KSB7DQo+Pj4+ICsgICAgICAgICAg
ICAgICBkcm1fZXJyKGdlbV9vYmotPmJhc2UuZGV2LCAiSW52YWxpZCBwYXJhbWV0ZXJzIGZvciBp
bXBvcnRlZCBidWZmZXIgbWFwcGluZ1xuIik7DQo+Pj4+ICsgICAgICAgICAgICAgICByZXR1cm4g
LUVJTlZBTDsNCj4+Pj4gKyAgICAgICB9DQo+Pj4+ICsNCj4+Pj4gKyAgICAgICBzZyA9IGdlbV9v
YmotPnNndC0+c2dsOw0KPj4+PiArICAgICAgIGlmICghc2cpIHsNCj4+Pj4gKyAgICAgICAgICAg
ICAgIGRybV9lcnIoZ2VtX29iai0+YmFzZS5kZXYsICJJbnZhbGlkIHNjYXR0ZXItZ2F0aGVyIGxp
c3QgZm9yIGltcG9ydGVkIGJ1ZmZlclxuIik7DQo+Pj4+ICsgICAgICAgICAgICAgICByZXR1cm4g
LUVJTlZBTDsNCj4+Pj4gKyAgICAgICB9DQo+Pj4+ICsNCj4+Pj4gKyAgICAgICBnZW1fb2JqLT5p
b21tdV9kZXYgPSBpb21tdV9kZXY7DQo+Pj4+ICsNCj4+Pj4gKyAgICAgICAvKg0KPj4+PiArICAg
ICAgICAqIEFmdGVyIGRtYV9idWZfbWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoKSwgc2dfZG1hX2Fk
ZHJlc3MoKSByZXR1cm5zIHRoZQ0KPj4+PiArICAgICAgICAqIElPTU1VIHZpcnR1YWwgYWRkcmVz
cywgbm90IHRoZSBwaHlzaWNhbCBhZGRyZXNzLiBUaGUgSU9NTVUgbWFwcyB0aGUNCj4+Pj4gKyAg
ICAgICAgKiBlbnRpcmUgYnVmZmVyIGFzIGEgY29udGlndW91cyByYW5nZSBpbiB0aGUgSU9NTVUg
YWRkcmVzcyBzcGFjZSBldmVuIGlmDQo+Pj4+ICsgICAgICAgICogdGhlIHVuZGVybHlpbmcgcGh5
c2ljYWwgbWVtb3J5IGlzIG5vbi1jb250aWd1b3VzLiBUaGVyZWZvcmUgdGhlIGZpcnN0DQo+Pj4+
ICsgICAgICAgICogc2cgZW50cnkncyBETUEgYWRkcmVzcyBpcyB0aGUgc3RhcnQgb2YgdGhlIGNv
bXBsZXRlIGNvbnRpZ3VvdXMNCj4+Pj4gKyAgICAgICAgKiBJT01NVS1tYXBwZWQgcmFuZ2UgYW5k
IGlzIHN1ZmZpY2llbnQgdG8gZGVzY3JpYmUgdGhlIGJ1ZmZlciB0byB0aGUgRFNQLg0KPj4+PiAr
ICAgICAgICAqLw0KPj4+PiArICAgICAgIGRtYV9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2cpOw0K
Pj4+PiArICAgICAgIGRtYV9hZGRyICs9ICgodTY0KWlvbW11X2Rldi0+c2lkIDw8IDMyKTsNCj4+
Pj4gKyAgICAgICBnZW1fb2JqLT5kbWFfYWRkciA9IGRtYV9hZGRyOw0KPj4+DQo+Pj4gVGhhdCBo
YW5kbGluZyBoZXJlIGlzIGNvbXBsZXRlbHkgYnJva2VuIHNpbmNlIGl0IGFzc3VtZXMgdGhhdCB0
aGUgZXhwb3J0ZXIgbWFwcyB0aGUgYnVmZmVyIGFzIGNvbnRpZ2lvdXMgcmFuZ2UuDQo+Pj4NCj4+
PiBCdXQgdGhhdCdzIGluIG5vIHdheSBndWFyYW50ZWVkLg0KPj4gSSdsbCBjb2xsZWN0IG1vcmUg
ZGV0YWlscyBhbmQgd2lsbCB0cnkgdG8gaW1wbGVtZW50IHRoaXMgaW4gdGhlIHJpZ2h0DQo+PiB3
YXksIG1heWJlIGJ5IGl0ZXJhdGluZyB0aGUgZnVsbCBzZ190YWJsZS4+DQo+IA0KPiBZb3UgY291
bGQgYWxzbyBkb2N1bWVudCBleHBsaWNpdGx5IHRoYXQgeW91IGNhbiBvbmx5IGltcG9ydCBjb250
aWd1b3VzIGJ1ZmZlcnMgKGUuZy4gRE1BLWJ1ZiBoZWFwIENNQSBldGMuLi4uKSBhbmQgdGhlbiBj
bGVhbmx5IHJlamVjdCBub24gY29udGlndW91cyBidWZmZXJzIGhlcmUuDQo+IA0KPiBXZSBoYXZl
IHF1aXRlIGEgbnVtYmVyIG9mIGRyaXZlcnMvSFcgd2l0aCB0aGF0IGxpbWl0YXRpb24sIHNvIG9u
bHkgYWNjZXB0aW5nIGNvbnRpZ3VvdXMgYnVmZmVycyBpcyBwZXJmZWN0bHkgb2suDQo+IA0KPiBZ
b3UganVzdCBjYW4ndCBzaWxlbnRseSBhc3N1bWUgdGhhdCBJT01NVSB3b3VsZCBhbHdheXMgbWFw
IHRoZSBlbnRpcmUgYnVmZmVyIGFzIG9uZSBjb250aWd1b3VzIHJhbmdlLCBjYXVzZSB0aGF0IGlz
IGNlcnRhaW5seSBub3QgdHJ1ZS4NCkkgdW5kZXJzdGFuZCB5b3VyIHBvaW50IENocmlzdGlhbiwg
dGhhbmtzIGZvciB0aGUgc3VnZ2VzdGlvbiE+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4g
DQo+IA0KPj4+IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
