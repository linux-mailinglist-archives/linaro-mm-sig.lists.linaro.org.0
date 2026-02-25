Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QF9CD7gU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D1B412260
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C98D6450C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:22 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 6B11E3ED23
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:16:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=NBIuGH+q;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=jOa7DmIz;
	spf=pass (lists.linaro.org: domain of trilokkumar.soni@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=trilokkumar.soni@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PJ4g8e2818270
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:16:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kdS/QntJSaGj5m5uHLTyiULnHKwPg/+0nR+soa0YEdU=; b=NBIuGH+qsITYkPXs
	Lof0N/6lSzDAv7Bpsm1A94Chi6YXXVYgoHooLmZ82JXaMITNohWCFCF5VA++xnoN
	yFJorSI5utmoSnY1IhQPWMnBVJp91XxB28WwAFzWVEGN3qSiQZCVtHkO5nZsRo2c
	JpJvOGSulZmLVv3Ty54oc1DNU2nIwPiaHIsLPqsoM1WW3qQCi34G+Bvjexxh6JlM
	uafSnrGYntn6CiqjATlu+MZVNOrBjrL6486X76+gARLA1z3DqX0pMoQtPXmQWMhN
	YH7S0MKzRKnXfjyz3xCY97lqnaDBIvi8uc5BjAJfkuSc/hfMmthY1ejzMJHJ1Gi+
	Zxh29A==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj55srdbh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:16:30 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2bdc0bb5ea0so861eec.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772046989; x=1772651789; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kdS/QntJSaGj5m5uHLTyiULnHKwPg/+0nR+soa0YEdU=;
        b=jOa7DmIzqSkRYVirqOUHWM1fSB7XOJzCUYzJiY2HW7JTn4qeuli/wI/0FqLliJY7Dc
         Q5eBV+WnLfv9aYUCS3gRSPHqXp569Dv2oZJT/0E60Sdk5vjfqN5zuIpXvPJmjZkmqsvG
         K9i2zeSTu4J+JonpcYz8gWpj/VcpjI3nDxneFJistzzI1WzUDhvDmvSPit/SLzl82Am0
         hbUY7RxvgLzHtEWjN9JVHLSxDLh7f20ntvz22Wc6UXC7XD9Ri15V29/W208UdaeBgdXG
         3mCfFEQlf8xAFJ01NATfYY3gdaeCr1+sYfudvxks/nNClSN1/XsWUMJP8Ki9uzaziWqD
         Lb1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772046989; x=1772651789;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdS/QntJSaGj5m5uHLTyiULnHKwPg/+0nR+soa0YEdU=;
        b=bioh9txUJouPHvpt5q9tdwq7hN83Vorh6ZX3ESQ+JoGRTqAH8CEHSmxOIwXRA6e5Gv
         KTylfz7hN2ILaKdBs/wKxB4xswJ3jUAeIP61WCHKYuIlv36Sw58z7khrb0XrmL60zblZ
         QgMjSqJkdLgd/j/cWT1LwFV3IHsJRFX4KMfopmu9mwHIi7zZIjVyVLbZDfHPG6HqScbo
         Xi61WQhJZ6kPgrWtJ0zMPfidlu6WbHyZgCAzAWLkOP1wNPuKzaxEra0JLJU6/UE2BRQ4
         tG++eK+zh+EWl5uIZfjODEXk6pWKwywSdJYikCJifO4l4k7+NzJiOtFe9ntSuQVUHTAs
         Buog==
X-Forwarded-Encrypted: i=1; AJvYcCWXl1fBqj3ZL5jmMk9HIuARr8xqn3x0uAS4zujoNcuNzfEa2r/x8Q03DMbqDnT5rTLInsXsyoQ/rvv9n5BY@lists.linaro.org
X-Gm-Message-State: AOJu0YwpA5NNI8kEw/6OWLek0+mw4/WROBHhB1xTiaksR97gJx+UQJBj
	YVgg5XNPcwFC4SgnekKqfB1RieKR/OckKmozMqxK7ruVyXqtn4IlqIhUWfbeD3FAwWCqEQwiKdV
	gJT/YDKY/9oJPc8qq5O5b2uXamYwZwt4tGvIRYwtvrin3MCvy5T8u32hcMb0QkYu55atZWw==
X-Gm-Gg: ATEYQzzHG9oBWWo6kcOc51WtyDoHo6YEuU+X1FgU6PDxpSJOEA0IuBtNDdLmJXAUp3A
	lZDRhF/uDEYRYlL3A7Vq1m+Zh0sFZOuwmzgQCjUciSuxU8FCtUWwfdT9DGRJGnY5HVZV/Rke1XF
	NOeNl323ocmssOG7J8A3yg2Ys7kCs+Yub0AdKkudFKE1YF0XnSAOg9w05+m6WMRHr4IrVpYSAGE
	RePDtHau69TQIee9HfbUtJw4OMq52Rooex/JFTrD/Xa1TZLcE6mfVpr8DzyWs+CzfCglarliUes
	iA5tM4ouInU4ih8odX3V7HA3f4pdI8YDxkmo09jTSFTvhUv9mA5pFbXrkDt7nQJfxefuMUxtv0S
	Zh0FyVd2gakiXCicVdy6eX1ElWnkV+r5fdKEQffzTFKsUuaimalae78c=
X-Received: by 2002:a05:7301:434b:b0:2ba:990a:4829 with SMTP id 5a478bee46e88-2bd7bd112fcmr7841912eec.30.1772046989276;
        Wed, 25 Feb 2026 11:16:29 -0800 (PST)
X-Received: by 2002:a05:7301:434b:b0:2ba:990a:4829 with SMTP id 5a478bee46e88-2bd7bd112fcmr7841890eec.30.1772046988649;
        Wed, 25 Feb 2026 11:16:28 -0800 (PST)
Received: from [192.168.86.165] ([76.176.48.107])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7dbe8304sm9699189eec.17.2026.02.25.11.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 11:16:28 -0800 (PST)
Message-ID: <4e4b50fe-1091-451e-b854-f7b061ebd88d@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 11:16:26 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bjorn Andersson <andersson@kernel.org>,
        Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
 <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
 <5a278b02-f2ad-408b-b0ad-f2297817bd7e@oss.qualcomm.com>
 <opjniedtfhkv7vlb57g3xyikcfkxelthx3lmspmypws4vxz4oc@4uypmmf4t6fb>
Content-Language: en-US
From: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>
In-Reply-To: <opjniedtfhkv7vlb57g3xyikcfkxelthx3lmspmypws4vxz4oc@4uypmmf4t6fb>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE4MCBTYWx0ZWRfX3AQn37b/eq74
 cNg/uhw6lgCU2m4j1RUQpeqrpnWFHUd6fXhNkppF80V/5OSrlGtqLhUUHbcjv8Ka1wGbs6Sm1oe
 ENsfD2H2GiV1s/5EZ8TDmvWhylnogozWUxYRoQAxVFnwvABrEdzJSsNm4XUOIkqPlLwVJ01e8SL
 LGm6fuN3Vli9q0pj6NT9j5dxQNK53g2MInHtu/ZUTa+NHXPMOEG7+0ubxI1MrwFv6GjKxpDWBvc
 jSakvvf1aWvWcr/RqKCFIa3YacKF36utV3bz4Skehz0DAT1tS84vUUVc+r3IOkKEoQ/+xAxMb05
 7+HdsTQE2XGUtsNIPujw4qHc23fPgqVa9YVfirraSo/eNKdQ6bJJvKb0UU2NIr0PUKp0ILAp73H
 OITyz+BKxFDAkps9pp5RWw8vblR/p6FtXd68nJiFuqxUPMY/Y+l8M1Jb55TjWwr+lUOx9ZGiHF5
 6OBvdOVORjgVwb3W/zQ==
X-Proofpoint-GUID: Hh6mZnS1LefHbkIgcEVpRXmV7nStQv-M
X-Authority-Analysis: v=2.4 cv=JfGxbEKV c=1 sm=1 tr=0 ts=699f4a8e cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=lsoD3MMNObdLvy1227ExmA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=Vs6AG_5Z_IHWLNxo5LUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: Hh6mZnS1LefHbkIgcEVpRXmV7nStQv-M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_02,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250180
X-Spamd-Bar: -----
X-MailFrom: trilokkumar.soni@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3Z43327UXDWUIG4JGCJFIXJEYV3DJGLV
X-Message-ID-Hash: 3Z43327UXDWUIG4JGCJFIXJEYV3DJGLV
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:09 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3Z43327UXDWUIG4JGCJFIXJEYV3DJGLV/>
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
	DATE_IN_PAST(1.00)[1197];
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
	FROM_NEQ_ENVFROM(0.00)[trilokkumar.soni@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C0D1B412260
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMi8yNS8yMDI2IDc6MTIgQU0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToNCj4gT24gV2VkLCBG
ZWIgMjUsIDIwMjYgYXQgMDc6NDc6MDhQTSArMDUzMCwgRWthbnNoIEd1cHRhIHdyb3RlOg0KPj4N
Cj4+DQo+PiBPbiAyLzI0LzIwMjYgOTowMyBBTSwgVHJpbG9rIFNvbmkgd3JvdGU6DQo+Pj4gT24g
Mi8yMy8yMDI2IDExOjA4IEFNLCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+Pj4+IEFkZCBpbml0aWFs
IGRvY3VtZW50YXRpb24gZm9yIHRoZSBRdWFsY29tbSBEU1AgQWNjZWxlcmF0b3IgKFFEQSkgZHJp
dmVyDQo+Pj4+IGludGVncmF0ZWQgaW4gdGhlIERSTSBhY2NlbCBzdWJzeXN0ZW0uDQo+Pj4+DQo+
Pj4+IFRoZSBuZXcgZG9jcyBpbnRyb2R1Y2UgUURBIGFzIGEgRFJNL2FjY2VsLWJhc2VkIGltcGxl
bWVudGF0aW9uIG9mDQo+Pj4+IEhleGFnb24gRFNQIG9mZmxvYWQgdGhhdCBpcyBpbnRlbmRlZCBh
cyBhIG1vZGVybiBhbHRlcm5hdGl2ZSB0byB0aGUNCj4+Pj4gbGVnYWN5IEZhc3RSUEMgZHJpdmVy
IGluIGRyaXZlcnMvbWlzYy4gVGhlIHRleHQgZGVzY3JpYmVzIHRoZSBkcml2ZXINCj4+Pj4gbW90
aXZhdGlvbiwgaGlnaC1sZXZlbCBhcmNoaXRlY3R1cmUgYW5kIGludGVyYWN0aW9uIHdpdGggSU9N
TVUgY29udGV4dA0KPj4+PiBiYW5rcywgR0VNLWJhc2VkIGJ1ZmZlciBtYW5hZ2VtZW50IGFuZCB0
aGUgUlBNc2cgdHJhbnNwb3J0Lg0KPj4+Pg0KPj4+PiBUaGUgdXNlci1zcGFjZSBmYWNpbmcgc2Vj
dGlvbiBkb2N1bWVudHMgdGhlIG1haW4gUURBIElPQ1RMcyB1c2VkIHRvDQo+Pj4+IGVzdGFibGlz
aCBEU1Agc2Vzc2lvbnMsIG1hbmFnZSBHRU0gYnVmZmVyIG9iamVjdHMgYW5kIGludm9rZSByZW1v
dGUNCj4+Pj4gcHJvY2VkdXJlcyB1c2luZyB0aGUgRmFzdFJQQyBwcm90b2NvbCwgYWxvbmcgd2l0
aCBhIHR5cGljYWwgbGlmZWN5Y2xlDQo+Pj4+IGV4YW1wbGUgZm9yIGFwcGxpY2F0aW9ucy4NCj4+
Pj4NCj4+Pj4gRmluYWxseSwgdGhlIGRyaXZlciBpcyB3aXJlZCBpbnRvIHRoZSBDb21wdXRlIEFj
Y2VsZXJhdG9ycw0KPj4+PiBkb2N1bWVudGF0aW9uIGluZGV4IHVuZGVyIERvY3VtZW50YXRpb24v
YWNjZWwsIGFuZCBhIGJyaWVmIGRlYnVnZ2luZw0KPj4+PiBzZWN0aW9uIHNob3dzIGhvdyB0byBl
bmFibGUgZHluYW1pYyBkZWJ1ZyBmb3IgdGhlIFFEQSBpbXBsZW1lbnRhdGlvbi4NCj4+PiBTbyBl
eGlzdGluZyBhcHBsaWNhdGlvbnMgd3JpdHRlbiBvdmVyIGNoYXJhY3RlciBkZXZpY2UgVUFQSSBu
ZWVkcyB0byBiZQ0KPj4+IHJld3JpdHRlbiBvdmVyIG5ldyBVQVBJIGFuZCBpdCB3aWxsIGJlIGJy
b2tlbiBvbmNlIHRoaXMgZHJpdmVyIGdldHMNCj4+PiBtZXJnZWQ/IEFyZSB3ZSBnb2luZyB0byBr
ZWVwIGJvdGggdGhlIGRyaXZlcnMgaW4gdGhlIExpbnV4IGtlcm5lbA0KPj4+IGFuZCBub3QgZGVw
cmVjYXRlIHRoZSAvY2hhciBkZXZpY2Ugb25lPyANCj4+Pg0KPj4+IElzIFF1YWxjb21tIGdvaW5n
IHRvIHByb3ZpZGUgdGhlIHdyYXBwZXIgbGlicmFyeSBpbiB0aGUgdXNlcnNwYWNlDQo+Pj4gc28g
dGhhdCBleGlzdGluZyBhcHBsaWNhdGlvbnMgYnkgb3VyIGN1c3RvbWVycyBhbmQgZGV2ZWxvcGVy
cw0KPj4+IGtlZXAgd29ya2luZyB3LyB0aGUgbmV3ZXIga2VybmVsIGlmIHRoZSBjaGFyIGludGVy
ZmFjZSBiYXNlZA0KPj4+IGRyaXZlciBnZXRzIGRlcHJlY2F0ZWQ/IEl0IGlzIG5vdCBjbGVhciBm
cm9tIHlvdXIgdGV4dCBhYm92ZS4gDQo+PiBUaGFua3MgZm9yIHJhaXNpbmcgdGhpcywgVHJpbG9r
Lg0KPj4NCj4+IFRoaXMgaXMgb25lIG9mIHRoZSBvcGVuIGl0ZW1zIHRoYXQgSSBoYXZlLiBJJ20g
bm90IGV4YWN0bHkgc3VyZSB3aGF0IHdvdWxkIGJlIHRoZQ0KPj4gYWNjZXB0YWJsZSB3YXkgZm9y
IHRoaXMuwqANCj4+DQo+PiBBcyB5b3UgbWVudGlvbmVkLCBhcHBsaWNhdGlvbnMgdGhhdCByZWx5
IG9uIC9kZXYvZmFzdHJwYyogbWlnaHQgbm90IHdvcmsgb24gUURBDQo+PiB3aXRob3V0IG1vZGlm
aWNhdGlvbi4NCj4+DQo+PiBJIHdhcyB0aGlua2luZyBpbiB0aGUgc2FtZSBsaW5lcyBhcyB5b3Ug
aGF2ZSBtZW50aW9uZWQgYW5kwqAgaGF2aW5nIHNvbWUgc2hpbS9jb21wYXQNCj4+IGRyaXZlciB0
byB0cmFuc2xhdGUgRmFzdFJQQyBVQVBJIHRvIFFEQS4gVGhlIGNvbXBhdCBkcml2ZXIgd291bGQg
ZXhwb3NlIHRoZSBleGlzdGluZw0KPj4gY2hhcmFjdGVyIGRldmljZXMgYW5kIHJvdXRlIHRoZSBj
YWxscyB0byBRREEuIFRoZSBjb21wYXQgZHJpdmVyIGNvdWxkIGJlIGJ1aWx0IHZpYSBLY29uZmln
Lg0KPj4NCj4gDQo+IFRoaXMgaXMgYSBmdW5kYW1lbnRhbCByZXF1aXJlbWVudCwgeW91IG5lZWQg
dG8gYWRkcmVzcyB0aGlzIGluIG9yZGVyIGZvcg0KPiB0aGlzIHRvIG1vdmUgZm9yd2FyZC4NCj4g
DQo+IFdoaWNoIG1ha2VzIG1lIHdvbmRlciBpZiBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0byByZWFj
aCBhbiBhY2NlbCBkcml2ZXINCj4gdGhyb3VnaCBpbmNyZW1lbnRhbCB0cmFuc2l0aW9uIG9mIHRo
ZSBjdXJyZW50IGRyaXZlciwgaW5zdGVhZCBvZiBqdXN0DQo+IGRyb3BwaW5nIGluIGEgZmV3IHRo
b3VzYW5kIGxpbmVzIG9mIG5ldyBjb2RlL2Rlc2lnbi4NCj4gDQo+PiBIb3dldmVyLCBJIGhhdmVu
4oCZdCBlbmNvdW50ZXJlZCBhbiBleGFtcGxlIG9mIHN1Y2ggYSBVQVBJ4oCRdHJhbnNsYXRpb24g
ZHJpdmVyIGluIHRoZSBrZXJuZWwNCj4+IGJlZm9yZSwgc28gSSB3b3VsZCB3YW50IGd1aWRhbmNl
IGZyb20gbWFpbnRhaW5lcnMgb24gd2hldGhlciB0aGlzIGlzIGFuIGFjY2VwdGFibGUNCj4+IG1v
ZGVsIG9yIG5vdC4NCj4+DQo+PiBSZWdhcmRpbmcgeW91ciBxdWVzdGlvbiBhYm91dCBsaWJyYXJ5
LCBhbGwgdGhlIEFQSXMgZXhwb3NlZCBieSBnaXRodWIvZmFzdHJwYyBsaWJyYXJ5IGFyZSBrZXB0
DQo+PiB1bmNoYW5nZWQgaW4gdGVybXMgb2YgZGVmaW5pdGlvbnMgYW5kIGV4cGVjdGF0aW9uLiBU
aGUgc2FtZSBwcm9qZWN0IGNhbiBiZSBidWlsZCBmb3IgYm90aA0KPj4gRmFzdFJQQyBhbmQgUURB
IGJhc2VkIG9uIGNvbmZpZ3VyZSBvcHRpb25zLiBTbywgdGhlIGFwcGxpY2F0aW9ucyB1c2luZyBn
aXRodWIvZmFzdHJwYyBzaG91bGQNCj4+IG5vdCBmYWNlIGFueSBwcm9ibGVtIGlmIHRoZSBsaWJz
IGlzIGJ1aWx0IHdpdGggcHJvcGVyIGNvbmZpZ3VyZSBvcHRpb25zLg0KPj4NCj4gDQo+IFlvdSdy
ZSBhc3N1bWluZyB0aGF0IHRoZSBrZXJuZWwgYW5kIHVzZXJzcGFjZSBhcmUgYSB1bmlmaWVkIHBp
ZWNlIG9mDQo+IHNvZnR3YXJlLCB0aGV5IGFyZSBub3QuIEl0IG11c3QgYmUgcG9zc2libGUgZm9y
IG1lIHRvIGluc3RhbGwgYSBuZXcNCj4ga2VybmVsIHBhY2thZ2Ugd2l0aG91dCBoYXZpbmcgdG8g
cmVwbGFjZSB0aGUgdXNlcnNwYWNlIGxpYnJhcmllcy4NCg0KVGhhbmsgeW91IEJqb3JuIGZvciBw
cm92aWRpbmcgdGhlIGlucHV0cy4gDQoNCkkgYWxzbyBmb3Jlc2VlIHRoYXQgd2Ugd2lsbCBiZSBz
dG9wIGFkZGluZyAob3IgYWxyZWFkeSBoYXBwZW5lZCkgbmV3IGZlYXR1cmVzDQppbnRvIHRoZSBl
eGlzdGluZyBmYXN0cnBjIGRyaXZlciwgc28gY2FsbGluZyB0aGUgbmV3IGRyaXZlciBhcyBhbiBh
bHRlcm5hdGl2ZQ0KaXMgaW4gb3ZlcnNvbGQgY2F0ZWdvcnkuDQoNCllvdSBhcmUgcHJldHR5IG11
Y2ggYmVnYW4gdGhlIGRlcHJlY2F0aW5nIHRoZSBleGlzdGluZyBmYXN0cnBjIGRyaXZlciwgc28g
bGV0J3MNCmp1c3QgbWVudGlvbiBpdCBpZiB0aGF0IGlzIHRoZSBjYXNlIGFuZCBwcm92aWRlIG1p
Z3JhdGlvbi9zaGltIHBhdGggc28gdGhhdA0KZXhpc3RpbmcgYmluYXJpZXMgZG9lc24ndCBicmVh
ay4NCg0KLS0tVHJpbG9rIFNvbmkNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
