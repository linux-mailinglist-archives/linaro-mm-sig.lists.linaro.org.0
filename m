Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPVzI88U4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E81741227E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13ED345190
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:46 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 5AB603F753
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 23:18:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=JpmL+CkW;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=h1VQiKCc;
	spf=pass (lists.linaro.org: domain of trilokkumar.soni@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=trilokkumar.soni@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PH2Llb3100894
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 23:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k1ncu6ArYzJhC1oWtoKaTbf490HS3AonBnLenM3Jd0c=; b=JpmL+CkWYUP0rhkq
	yvcnpyP/EsHfwQoW0K88N1JAwbxTi+LLkZjH9DnYvIiobtYH5J/g8+9NO85fBMy2
	kviXPZxgDBjU9X/GvP4DBmN+EQ3kZmoyKjP7w6eVnJVJzNDhRfpq2IsfE81WQkuh
	SqGKaB0hOvmonmXYz8t/bTRs9L/qyP0J6vhfIpk7hwpr4X/Oa++bWNC8h1FEQnM0
	aRUSD8losKzsY6bDy0GwTFFfO5k1NBw/RQLoC5/2zk+aY+Gn89MIwAMaa4NJeH2v
	SO1uWYK0vdnDIr369SYLjwZ1kJxo32PT1fieroRk0aGGqmVEoRy2LpCjqL1JCwzX
	OLvqSw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj54p9283-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 23:18:32 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2bd3bf5dde4so208229eec.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 15:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772061512; x=1772666312; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k1ncu6ArYzJhC1oWtoKaTbf490HS3AonBnLenM3Jd0c=;
        b=h1VQiKCcc46nFNv/SL1HHHorhGNFUcXQxAmpCi9+ZUPCeiu0dBh7JgNh2bNSpl3rrW
         +eUGfY2Mdx/fVHmqCVE15B/v7OJSmF5ONoPxCcNIA2Ww+7G1QAvP0pCyhcInLbqf3hC+
         7+irzTaiHeHw08Uw0ZgOtgR+rCWs8/jbacmiFPN2wkxYYGCVeAoYMssI/U5Vga5Y7YMB
         Acb0pmreQlXwAvjYRZN19MxfvKanOMaBCpoUEe+bxaxTW8xJf8dikgUonYhiFXW6bJNO
         iQS/qdHA2oLmkVBMMSzMYS8NCGyyql6LGtpVzM1Hc5nEJNAmNtBVsVey+Xuhbzpy1Ekg
         3uqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772061512; x=1772666312;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k1ncu6ArYzJhC1oWtoKaTbf490HS3AonBnLenM3Jd0c=;
        b=Dh0XjYBbOyzOgyWbY05t7Qh/xn02nD4VgY5cO8AEaj2OLP0OEByZ0dTHS6FO/F3pUM
         EyxJ5xC73FoGf+aGsWAPtTFDJjZ0MV+LnsAxOkisbEZ7Zk8lnnX9AJTwH3+8jB5MxMdD
         OBd2UNS7pj+xlwKrHe4gDRAM8dMAYFuE7fhojVGyHFOJzyErYpNfzAdmgGn8K5q1m1uA
         N9TER2rAW0rOrYaCrwsFyMpDKxt9TTUbOxxcHStvwI5Yw+IICVJ7in94oM9RjN6Va8kd
         PTG4ecq9oAcGUuj+9ICBiFnXTRCxyeX+Iigfhq2IWikiTZMmpkss5jYSfHy2QODj/Zmv
         mkCg==
X-Forwarded-Encrypted: i=1; AJvYcCUBQsPSFiMdrA2TfQUrpLTdDKGUnWZvVXdk6lgZch/16kFoaxaIY771X2fBPPXJoLCVYfU9p78T4f7tLtqj@lists.linaro.org
X-Gm-Message-State: AOJu0YykRTN5g+T2ZkqBeKPcp0juMUdcxUnHiFCrR5zV0TGu4mBwZ2HH
	RjzYrKKioZJdhN4UMcI8n37P5dpwqQ+grbzyjhoerdnx76FEtzEOjVGPj/nHRQdVIDBroOOy6CT
	QUi1+7nBPeGNCi/lJ1ls/99jXcJUzo3xF4pNlHaxwCHfTjkZcH+YIfBt34akXqvdJ+WgR9A==
X-Gm-Gg: ATEYQzy6catGsDwiqbyuetDYTWHXVpcg2Rvun8EZJt9nL/3KTeTgfycyY8Mg09G8phL
	o6BLbB6uVDnGGSharz4hl+1cg6/7REsIR32yf6jZGE/df6sXoeitNaqJAjNrUNJsZt0zdSZ22pH
	4X2FqUcPlmmU543K965FZEDuQUHX/xhAtY+M3nw4ZAyQFyXjLCB0U5W2Ze64P9KD3Hulx7m+wBo
	VfdjSVVmG+UtmxR6q/TRAFJGCeuJMYMtmpwplFm64Enk7ltg1WXE/WWYhLvUJxiQgMPv/P71RAk
	u28CU6Lx7j92JEo9WNWrptlAb1InQHjgxY4R3EMrW86LfUcmEn5XkmMspcporpk4kwPjzDu0uOF
	idwolaxQsuywZbozAAry7PkWMOEq7kGLLf07MxqKpEphejpTTqLJjfqCQqxMffqJ4ZXoYXE8/jU
	YpEEgn
X-Received: by 2002:a05:7300:538e:b0:2b7:1abc:a6eb with SMTP id 5a478bee46e88-2bdcbf4440dmr892785eec.7.1772061511672;
        Wed, 25 Feb 2026 15:18:31 -0800 (PST)
X-Received: by 2002:a05:7300:538e:b0:2b7:1abc:a6eb with SMTP id 5a478bee46e88-2bdcbf4440dmr892750eec.7.1772061510969;
        Wed, 25 Feb 2026 15:18:30 -0800 (PST)
Received: from [10.134.65.116] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdd1cf0115sm357385eec.8.2026.02.25.15.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 15:18:30 -0800 (PST)
Message-ID: <3f06453a-ac7e-46e0-8d37-e0f9980b438d@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 15:18:29 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
 <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
 <5a278b02-f2ad-408b-b0ad-f2297817bd7e@oss.qualcomm.com>
 <opjniedtfhkv7vlb57g3xyikcfkxelthx3lmspmypws4vxz4oc@4uypmmf4t6fb>
 <4e4b50fe-1091-451e-b854-f7b061ebd88d@oss.qualcomm.com>
 <jmv4jkwku5x5acxno3vyar4cozl3makdz6vzdyjsitf2vtyhp6@cxtl7zmaayvq>
Content-Language: en-US
From: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>
In-Reply-To: <jmv4jkwku5x5acxno3vyar4cozl3makdz6vzdyjsitf2vtyhp6@cxtl7zmaayvq>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDIyMiBTYWx0ZWRfX/29JFAUlNLx9
 +muEsNw+nbQzSVd5CPl70mrPaqAZQEK75Xpuu8wEbkaXyJfFK+sLwaSBROttsVDxrmizr9WNwgX
 ZhQJxynzKQNdbuw368bC5nzIULGUSYpIoUFJB4QN1meYMrBwTQMWiT7Q+IAtLGsMTpxwqJDADRM
 Y1qgODSMg+MHzCdk5Kc4IzyoK5pHvLRmT2YTPNT62NUrYE3nR98+yLI2ksCMkZLK7szQHblWzOr
 pfJrI79IuvXjAQf9Q6HgbpathTYRQkIrRvOH37EWTA46uIY5PyKiwHwcp0eABfTCsFL8Qi2yyoO
 jOlQL2X0+wLXT3v7mIkSgqOhNzAsDxG3dI4d+WPkq8DHiwI6mRRrK1UlzR4jv/R8kAwCdK4nduQ
 oLTOI7TLgtU6QEegnwbCHdt/jLdV/tVL57d0eFD4RGu0MardwDySXgOo3nKgocv2/QOtwe5saAH
 teDR/gWWRdIzom/cJdA==
X-Proofpoint-GUID: zLEK-x2zvRikOMbfVKDLwotJjQlmatf0
X-Authority-Analysis: v=2.4 cv=I5Bohdgg c=1 sm=1 tr=0 ts=699f8348 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=AmUwcyaVtIZmdcZSVHAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: zLEK-x2zvRikOMbfVKDLwotJjQlmatf0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250222
X-Spamd-Bar: ---
X-MailFrom: trilokkumar.soni@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OZPZFJDNSTVOTXLJY7QYMWAZQVVYH5BX
X-Message-ID-Hash: OZPZFJDNSTVOTXLJY7QYMWAZQVVYH5BX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:21 +0000
CC: Bjorn Andersson <andersson@kernel.org>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OZPZFJDNSTVOTXLJY7QYMWAZQVVYH5BX/>
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
	DATE_IN_PAST(1.00)[1193];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,quicinc.com];
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
X-Rspamd-Queue-Id: 0E81741227E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMi8yNS8yMDI2IDExOjQwIEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOg0KPiBPbiBXZWQs
IEZlYiAyNSwgMjAyNiBhdCAxMToxNjoyNkFNIC0wODAwLCBUcmlsb2sgU29uaSB3cm90ZToNCj4+
IE9uIDIvMjUvMjAyNiA3OjEyIEFNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6DQo+Pj4gT24gV2Vk
LCBGZWIgMjUsIDIwMjYgYXQgMDc6NDc6MDhQTSArMDUzMCwgRWthbnNoIEd1cHRhIHdyb3RlOg0K
Pj4+Pg0KPj4+Pg0KPj4+PiBPbiAyLzI0LzIwMjYgOTowMyBBTSwgVHJpbG9rIFNvbmkgd3JvdGU6
DQo+Pj4+PiBPbiAyLzIzLzIwMjYgMTE6MDggQU0sIEVrYW5zaCBHdXB0YSB3cm90ZToNCj4+Pj4+
PiBBZGQgaW5pdGlhbCBkb2N1bWVudGF0aW9uIGZvciB0aGUgUXVhbGNvbW0gRFNQIEFjY2VsZXJh
dG9yIChRREEpIGRyaXZlcg0KPj4+Pj4+IGludGVncmF0ZWQgaW4gdGhlIERSTSBhY2NlbCBzdWJz
eXN0ZW0uDQo+Pj4+Pj4NCj4+Pj4+PiBUaGUgbmV3IGRvY3MgaW50cm9kdWNlIFFEQSBhcyBhIERS
TS9hY2NlbC1iYXNlZCBpbXBsZW1lbnRhdGlvbiBvZg0KPj4+Pj4+IEhleGFnb24gRFNQIG9mZmxv
YWQgdGhhdCBpcyBpbnRlbmRlZCBhcyBhIG1vZGVybiBhbHRlcm5hdGl2ZSB0byB0aGUNCj4+Pj4+
PiBsZWdhY3kgRmFzdFJQQyBkcml2ZXIgaW4gZHJpdmVycy9taXNjLiBUaGUgdGV4dCBkZXNjcmli
ZXMgdGhlIGRyaXZlcg0KPj4+Pj4+IG1vdGl2YXRpb24sIGhpZ2gtbGV2ZWwgYXJjaGl0ZWN0dXJl
IGFuZCBpbnRlcmFjdGlvbiB3aXRoIElPTU1VIGNvbnRleHQNCj4+Pj4+PiBiYW5rcywgR0VNLWJh
c2VkIGJ1ZmZlciBtYW5hZ2VtZW50IGFuZCB0aGUgUlBNc2cgdHJhbnNwb3J0Lg0KPj4+Pj4+DQo+
Pj4+Pj4gVGhlIHVzZXItc3BhY2UgZmFjaW5nIHNlY3Rpb24gZG9jdW1lbnRzIHRoZSBtYWluIFFE
QSBJT0NUTHMgdXNlZCB0bw0KPj4+Pj4+IGVzdGFibGlzaCBEU1Agc2Vzc2lvbnMsIG1hbmFnZSBH
RU0gYnVmZmVyIG9iamVjdHMgYW5kIGludm9rZSByZW1vdGUNCj4+Pj4+PiBwcm9jZWR1cmVzIHVz
aW5nIHRoZSBGYXN0UlBDIHByb3RvY29sLCBhbG9uZyB3aXRoIGEgdHlwaWNhbCBsaWZlY3ljbGUN
Cj4+Pj4+PiBleGFtcGxlIGZvciBhcHBsaWNhdGlvbnMuDQo+Pj4+Pj4NCj4+Pj4+PiBGaW5hbGx5
LCB0aGUgZHJpdmVyIGlzIHdpcmVkIGludG8gdGhlIENvbXB1dGUgQWNjZWxlcmF0b3JzDQo+Pj4+
Pj4gZG9jdW1lbnRhdGlvbiBpbmRleCB1bmRlciBEb2N1bWVudGF0aW9uL2FjY2VsLCBhbmQgYSBi
cmllZiBkZWJ1Z2dpbmcNCj4+Pj4+PiBzZWN0aW9uIHNob3dzIGhvdyB0byBlbmFibGUgZHluYW1p
YyBkZWJ1ZyBmb3IgdGhlIFFEQSBpbXBsZW1lbnRhdGlvbi4NCj4+Pj4+IFNvIGV4aXN0aW5nIGFw
cGxpY2F0aW9ucyB3cml0dGVuIG92ZXIgY2hhcmFjdGVyIGRldmljZSBVQVBJIG5lZWRzIHRvIGJl
DQo+Pj4+PiByZXdyaXR0ZW4gb3ZlciBuZXcgVUFQSSBhbmQgaXQgd2lsbCBiZSBicm9rZW4gb25j
ZSB0aGlzIGRyaXZlciBnZXRzDQo+Pj4+PiBtZXJnZWQ/IEFyZSB3ZSBnb2luZyB0byBrZWVwIGJv
dGggdGhlIGRyaXZlcnMgaW4gdGhlIExpbnV4IGtlcm5lbA0KPj4+Pj4gYW5kIG5vdCBkZXByZWNh
dGUgdGhlIC9jaGFyIGRldmljZSBvbmU/IA0KPj4+Pj4NCj4+Pj4+IElzIFF1YWxjb21tIGdvaW5n
IHRvIHByb3ZpZGUgdGhlIHdyYXBwZXIgbGlicmFyeSBpbiB0aGUgdXNlcnNwYWNlDQo+Pj4+PiBz
byB0aGF0IGV4aXN0aW5nIGFwcGxpY2F0aW9ucyBieSBvdXIgY3VzdG9tZXJzIGFuZCBkZXZlbG9w
ZXJzDQo+Pj4+PiBrZWVwIHdvcmtpbmcgdy8gdGhlIG5ld2VyIGtlcm5lbCBpZiB0aGUgY2hhciBp
bnRlcmZhY2UgYmFzZWQNCj4+Pj4+IGRyaXZlciBnZXRzIGRlcHJlY2F0ZWQ/IEl0IGlzIG5vdCBj
bGVhciBmcm9tIHlvdXIgdGV4dCBhYm92ZS4gDQo+Pj4+IFRoYW5rcyBmb3IgcmFpc2luZyB0aGlz
LCBUcmlsb2suDQo+Pj4+DQo+Pj4+IFRoaXMgaXMgb25lIG9mIHRoZSBvcGVuIGl0ZW1zIHRoYXQg
SSBoYXZlLiBJJ20gbm90IGV4YWN0bHkgc3VyZSB3aGF0IHdvdWxkIGJlIHRoZQ0KPj4+PiBhY2Nl
cHRhYmxlIHdheSBmb3IgdGhpcy7CoA0KPj4+Pg0KPj4+PiBBcyB5b3UgbWVudGlvbmVkLCBhcHBs
aWNhdGlvbnMgdGhhdCByZWx5IG9uIC9kZXYvZmFzdHJwYyogbWlnaHQgbm90IHdvcmsgb24gUURB
DQo+Pj4+IHdpdGhvdXQgbW9kaWZpY2F0aW9uLg0KPj4+Pg0KPj4+PiBJIHdhcyB0aGlua2luZyBp
biB0aGUgc2FtZSBsaW5lcyBhcyB5b3UgaGF2ZSBtZW50aW9uZWQgYW5kwqAgaGF2aW5nIHNvbWUg
c2hpbS9jb21wYXQNCj4+Pj4gZHJpdmVyIHRvIHRyYW5zbGF0ZSBGYXN0UlBDIFVBUEkgdG8gUURB
LiBUaGUgY29tcGF0IGRyaXZlciB3b3VsZCBleHBvc2UgdGhlIGV4aXN0aW5nDQo+Pj4+IGNoYXJh
Y3RlciBkZXZpY2VzIGFuZCByb3V0ZSB0aGUgY2FsbHMgdG8gUURBLiBUaGUgY29tcGF0IGRyaXZl
ciBjb3VsZCBiZSBidWlsdCB2aWEgS2NvbmZpZy4NCj4+Pj4NCj4+Pg0KPj4+IFRoaXMgaXMgYSBm
dW5kYW1lbnRhbCByZXF1aXJlbWVudCwgeW91IG5lZWQgdG8gYWRkcmVzcyB0aGlzIGluIG9yZGVy
IGZvcg0KPj4+IHRoaXMgdG8gbW92ZSBmb3J3YXJkLg0KPj4+DQo+Pj4gV2hpY2ggbWFrZXMgbWUg
d29uZGVyIGlmIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIHJlYWNoIGFuIGFjY2VsIGRyaXZlcg0K
Pj4+IHRocm91Z2ggaW5jcmVtZW50YWwgdHJhbnNpdGlvbiBvZiB0aGUgY3VycmVudCBkcml2ZXIs
IGluc3RlYWQgb2YganVzdA0KPj4+IGRyb3BwaW5nIGluIGEgZmV3IHRob3VzYW5kIGxpbmVzIG9m
IG5ldyBjb2RlL2Rlc2lnbi4NCj4+Pg0KPj4+PiBIb3dldmVyLCBJIGhhdmVu4oCZdCBlbmNvdW50
ZXJlZCBhbiBleGFtcGxlIG9mIHN1Y2ggYSBVQVBJ4oCRdHJhbnNsYXRpb24gZHJpdmVyIGluIHRo
ZSBrZXJuZWwNCj4+Pj4gYmVmb3JlLCBzbyBJIHdvdWxkIHdhbnQgZ3VpZGFuY2UgZnJvbSBtYWlu
dGFpbmVycyBvbiB3aGV0aGVyIHRoaXMgaXMgYW4gYWNjZXB0YWJsZQ0KPj4+PiBtb2RlbCBvciBu
b3QuDQo+Pj4+DQo+Pj4+IFJlZ2FyZGluZyB5b3VyIHF1ZXN0aW9uIGFib3V0IGxpYnJhcnksIGFs
bCB0aGUgQVBJcyBleHBvc2VkIGJ5IGdpdGh1Yi9mYXN0cnBjIGxpYnJhcnkgYXJlIGtlcHQNCj4+
Pj4gdW5jaGFuZ2VkIGluIHRlcm1zIG9mIGRlZmluaXRpb25zIGFuZCBleHBlY3RhdGlvbi4gVGhl
IHNhbWUgcHJvamVjdCBjYW4gYmUgYnVpbGQgZm9yIGJvdGgNCj4+Pj4gRmFzdFJQQyBhbmQgUURB
IGJhc2VkIG9uIGNvbmZpZ3VyZSBvcHRpb25zLiBTbywgdGhlIGFwcGxpY2F0aW9ucyB1c2luZyBn
aXRodWIvZmFzdHJwYyBzaG91bGQNCj4+Pj4gbm90IGZhY2UgYW55IHByb2JsZW0gaWYgdGhlIGxp
YnMgaXMgYnVpbHQgd2l0aCBwcm9wZXIgY29uZmlndXJlIG9wdGlvbnMuDQo+Pj4+DQo+Pj4NCj4+
PiBZb3UncmUgYXNzdW1pbmcgdGhhdCB0aGUga2VybmVsIGFuZCB1c2Vyc3BhY2UgYXJlIGEgdW5p
ZmllZCBwaWVjZSBvZg0KPj4+IHNvZnR3YXJlLCB0aGV5IGFyZSBub3QuIEl0IG11c3QgYmUgcG9z
c2libGUgZm9yIG1lIHRvIGluc3RhbGwgYSBuZXcNCj4+PiBrZXJuZWwgcGFja2FnZSB3aXRob3V0
IGhhdmluZyB0byByZXBsYWNlIHRoZSB1c2Vyc3BhY2UgbGlicmFyaWVzLg0KPj4NCj4+IFRoYW5r
IHlvdSBCam9ybiBmb3IgcHJvdmlkaW5nIHRoZSBpbnB1dHMuIA0KPj4NCj4+IEkgYWxzbyBmb3Jl
c2VlIHRoYXQgd2Ugd2lsbCBiZSBzdG9wIGFkZGluZyAob3IgYWxyZWFkeSBoYXBwZW5lZCkgbmV3
IGZlYXR1cmVzDQo+PiBpbnRvIHRoZSBleGlzdGluZyBmYXN0cnBjIGRyaXZlciwgc28gY2FsbGlu
ZyB0aGUgbmV3IGRyaXZlciBhcyBhbiBhbHRlcm5hdGl2ZQ0KPj4gaXMgaW4gb3ZlcnNvbGQgY2F0
ZWdvcnkuDQo+Pg0KPj4gWW91IGFyZSBwcmV0dHkgbXVjaCBiZWdhbiB0aGUgZGVwcmVjYXRpbmcg
dGhlIGV4aXN0aW5nIGZhc3RycGMgZHJpdmVyLCBzbyBsZXQncw0KPj4ganVzdCBtZW50aW9uIGl0
IGlmIHRoYXQgaXMgdGhlIGNhc2UgYW5kIHByb3ZpZGUgbWlncmF0aW9uL3NoaW0gcGF0aCBzbyB0
aGF0DQo+PiBleGlzdGluZyBiaW5hcmllcyBkb2Vzbid0IGJyZWFrLg0KPiANCj4gSSBhZ3JlZSB0
aGF0IHdlIG5lZWQgYSBtaWdyYXRpb24gcGF0aCwgYnV0IEknZCByZWFsbHkgZm9jdXMgb24gaXQg
YWZ0ZXINCj4gZ2V0dGluZyBhdCBsZWFzdCBiYXNpYyBwYXJ0cyBvZiB0aGUgUURBIHJldmlld2Vk
IGFuZCBhZ3JlZWQgdXBvbi4NCj4gT3RoZXJ3aXNlIHRoZSBzaGltIGxheWVyIHdpbGwgYmUgcmV3
b3JrZWQgYWdhaW4gYW5kIGFnYWluIHdpdGggbm8NCj4gaW1tZWRpYXRlIGFkZGVkIGJlbmVmaXQu
DQo+IA0KDQpJIGFtIGZpbmUgd2l0aCB0aGUgcmV2aWV3IHRvIGJlIGNvbnRpbnVlZCwgdGhpcyBp
cyBSRkMgc2VyaWVzIGFueXdheS4gV2Ugc2hvdWxkIGFsc28gZGVjaWRlDQp0aGUgZGVzaWduIG9m
IHRoZSBzaGltIGxheWVyIGhlcmUgYXMgd2VsbC4gSSBwcmVmZXIgdG8gbm90IGhhdmUgbXVsdGlw
bGUNClJGQyByZXZpc2lvbnMgaGVyZSBpZiB3ZSBkb24ndCBhZ3JlZSBvbiB0aGUgYmFzaWMgcmVx
dWlyZW1lbnRzIHdoaWNoDQpsZWFkcyB0byBhY2NlcHRhbmNlIG9mIHRoaXMgbmV3IGRyaXZlci4g
DQoNCi0tLVRyaWxvayBTb25pDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
