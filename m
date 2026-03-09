Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IN3RMDNe5mm3vQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8BD430AAF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18DDF404F9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:05:39 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 4C0FE3F719
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 06:59:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=i5QfXdgA;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ERDM7msU;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6294fNUD1588528
	for <linaro-mm-sig@lists.linaro.org>; Mon, 9 Mar 2026 06:59:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G+rVK2qEYMP73XgPEKoeHzVEXgyXmbiGfinl4OV1AfY=; b=i5QfXdgAcg/AgJni
	irNAv/e8dbLAEbvQsR2oIvr8dzvfhC4LlOP5b0CUTzKKvbHMVURDzdsbElcrqk37
	leb3d0XeO+wsZvb4WSyXwVHqYmgLUGuVSXsvUTqfbQsQxrYL5qOoI96G9Sd/6BFb
	1d4IM7k4Cfc0ikPSe8fnxEOzpXFI03B8f3fSK43H3iiPAKvy4sACg/wvTt55A7pt
	3u4Q3kGPEbgcz57stZVWCbucXmDT9odK4Bnl2AN2bzeNenaT0oCZyvSZ9ylxkB+z
	FvwsrcIZS9B9tZgDXowO674ls3TgjKtQRQ7IwMCSo/bnwHIlVK8Ay+idNqfBPxnM
	xRMw6g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csqcy8c5g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 06:59:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae47b3adacso74663225ad.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 08 Mar 2026 23:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039578; x=1773644378; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G+rVK2qEYMP73XgPEKoeHzVEXgyXmbiGfinl4OV1AfY=;
        b=ERDM7msUMkGKmNxZNef8y8ulnMmVMZBdoSeKBFcnmTJg0EtLjSk7FkY0MpiXM9crTr
         f81WsuiO8qJqIcwLUhPFW3hIx8yjgjtZNLCnArjmYcFen4d4r4Sr9LKSy6QZfvgs/lZa
         XnxUG5+VkSj+PDeu8MdwXGa30B9EOj+DVVA1/f4VsC4j8l23vU7L404iIBMb+gQk/0Jb
         SKyZjXHHsmcExqGSSGPBRoNB6rUvAE1uqeaMFgKCtMRDX9LxYjERnIuxx/Za319G4QXF
         eOPr4rXQCoy3Y5N7+TdAVJQ2MC50VZWcEC+p0VrbJ4te7jZVSyVRHuigBrDxK06BBxXW
         FTqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039578; x=1773644378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G+rVK2qEYMP73XgPEKoeHzVEXgyXmbiGfinl4OV1AfY=;
        b=LiLTeRDEG4i0hSN63nZ/Xe37Wvkkhxnez/N8Vuo1slmqhqCW+zkIbWBK/xuysuqDNl
         QkNSO3PH+FljDsNQeq7irNMlkgRIWtxONUZCpyllisIerrIf2hwLAmsjzcdIvYhvb88a
         GOFuuJ9wVKBzl/v2Ju3MrakUHdUBGxP1kBhd8uneirn8/3skbydiogbV+XKZcberJ0sl
         nKo9FHK62Dr1c/E1TplrxXbqQKH7b6kQzW85wx/WBwQTt1jQU+UoZ1mnOvhhlxxYmGcA
         re6TAGICTM4GPJB5kOI+w0vGOT5jg41gPTyHNCwd2cpuYfu8kIt0zowyTNxTR/na2sXZ
         wPug==
X-Forwarded-Encrypted: i=1; AJvYcCVZ6TQsVd4cjys8q+0dIl8v5+KtIWz4rMqKdy2Ai2PDQFw44opbUgGSwbduPq0z+/5+Yhkbd4aiXSJzNy3l@lists.linaro.org
X-Gm-Message-State: AOJu0YzXJ+oDbmr2XEEjGdKbQwGBSZmJDSl4lUqyAUGLliaaHpBngUUk
	lpJGb2SWRzNDiTAoRBXulI/Liq/SkEGO0w2ECwaX7GQxbjSxspGivbFxkFZIFKccqa2vHNjd87Q
	fRWANrA70bufuONf/TUjzuw+0duHFEERfu5+YVoE9M8djrXJ/15H8IeXtNYsKFwTxEjfyXQ==
X-Gm-Gg: ATEYQzyE44TjX2WB0wtHQY80y2yhwOvVb6DO/WiPmjR5JyTqon5VHG+4sdyp+O1AgTK
	RArywenKd5W2iwjayGVZ78rl5H7XNaY8IkUQwiKBpbq2cXzbNhMiEbHB/5s+00xL8lBINNELW9j
	UhHP/PS/pbn1RRYhx5/tzCzhNLwzG6fP8zmpIHaLUeDU4nE5NwhhYVXYvhC/zBbs/RPozIy3utu
	z4R4hWgj8pvf02JJEcBuJVajAKKImYaokPoOF1oQVEQSLLqF+3w82CYE/vCVBRpC8XeDt/nI7Ee
	vl+38DVppxhviF4nDANuTLeMJDpw+1QdbslDYgTqzsL01Y4Q1FlPll4mKmpU+iVQcARdlH4OK7g
	byKGodYUJhCbAMN5Wg7KcA1pu5ArwpcVsJjToVZpQjImLQfXFBQ==
X-Received: by 2002:a17:902:f651:b0:2ae:61bb:4255 with SMTP id d9443c01a7336-2ae82418927mr109317855ad.11.1773039578331;
        Sun, 08 Mar 2026 23:59:38 -0700 (PDT)
X-Received: by 2002:a17:902:f651:b0:2ae:61bb:4255 with SMTP id d9443c01a7336-2ae82418927mr109317495ad.11.1773039577848;
        Sun, 08 Mar 2026 23:59:37 -0700 (PDT)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e5c167sm99741945ad.1.2026.03.08.23.59.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 23:59:37 -0700 (PDT)
Message-ID: <29f9bb45-5c3f-4847-a629-21cef540f38b@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 12:29:29 +0530
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
 <20260224-qda-firstpost-v1-12-fe46a9c1a046@oss.qualcomm.com>
 <e87c0c1d-82f1-4a03-9a56-9bf3e03273cf@amd.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <e87c0c1d-82f1-4a03-9a56-9bf3e03273cf@amd.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MyBTYWx0ZWRfX4zcMgeONIoEC
 DZdaASL3/EMm+zC132fjTnq0mkBlxPvEg0IwBcIyFDgR7t86dLFM1IroJZ4pIXNRAKRLxl4erp+
 7wIEDMlzEk/Rk/g8blblzf74NPara9bdlrUblJLtBuPdXvUHRvw1NUCClXRSwY8N0/Ov9eJkpmY
 xkdR8lCO2Ml3VGUcJxrpqy7QucMDam5kQgmDcJSeJemc/kHBvzT3uiqmUgjKZL4bi3hcG+TnttU
 KkbdP1MDusTH98USzBDjynArdStqHNiuABWVkgab7ZYTPvfMsTKQnf3ehfrJPM8fYwQ7VdvRwEu
 j2dEVhpkTCqU41UgiwGK5nS0A6WbIrjVu519bke8uokp08y290lBzgDqA/ZbXMZUI2mwoAH0HYx
 FX+RBwzaTfEkGDb3NZxb7BPc4FfREytIs1EByiJTsk1Es4oOdWl3N+RhhcvdmFKvOL1Vt0Bbfpx
 KD6nP+GVan2/0wn4hbQ==
X-Authority-Analysis: v=2.4 cv=QJtlhwLL c=1 sm=1 tr=0 ts=69ae6fdb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=_EeEMxcBAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=YM0dgK5nqTTLF_VjvEgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=czjwGCTIUPoA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: g7cS3bP299vWgQ5VHFThyzw-AB6sP4uZ
X-Proofpoint-GUID: g7cS3bP299vWgQ5VHFThyzw-AB6sP4uZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090063
X-Spamd-Bar: ------
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AQKUMJ2W6UGOCXUTD2ERX4XNM3757WKA
X-Message-ID-Hash: AQKUMJ2W6UGOCXUTD2ERX4XNM3757WKA
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:12 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 12/18] accel/qda: Add PRIME dma-buf import support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AQKUMJ2W6UGOCXUTD2ERX4XNM3757WKA/>
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
	DATE_IN_PAST(1.00)[1018];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.971];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aka.ms:url,linaro.org:email,oss.qualcomm.com:mid,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5A8BD430AAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDIvMjQvMjAyNiAyOjQyIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAy
LzIzLzI2IDIwOjA5LCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+PiBbU2llIGVyaGFsdGVuIG5pY2h0
IGjDpHVmaWcgRS1NYWlscyB2b24gZWthbnNoLmd1cHRhQG9zcy5xdWFsY29tbS5jb20uIFdlaXRl
cmUgSW5mb3JtYXRpb25lbiwgd2FydW0gZGllcyB3aWNodGlnIGlzdCwgZmluZGVuIFNpZSB1bnRl
ciBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQ0KPj4NCj4+
IEFkZCBQUklNRSBkbWEtYnVmIGltcG9ydCBzdXBwb3J0IGZvciBRREEgR0VNIGJ1ZmZlciBvYmpl
Y3RzIGFuZCBpbnRlZ3JhdGUNCj4+IGl0IHdpdGggdGhlIGV4aXN0aW5nIHBlci1wcm9jZXNzIG1l
bW9yeSBtYW5hZ2VyIGFuZCBJT01NVSBkZXZpY2UgbW9kZWwuDQo+Pg0KPj4gVGhlIGltcGxlbWVu
dGF0aW9uIGV4dGVuZHMgcWRhX2dlbV9vYmogdG8gcmVwcmVzZW50IGltcG9ydGVkIGRtYS1idWZz
LA0KPj4gaW5jbHVkaW5nIGRtYV9idWYgcmVmZXJlbmNlcywgYXR0YWNobWVudCBzdGF0ZSwgc2Nh
dHRlci1nYXRoZXIgdGFibGVzDQo+PiBhbmQgYW4gaW1wb3J0ZWQgRE1BIGFkZHJlc3MgdXNlZCBm
b3IgRFNQLWZhY2luZyBib29rLWtlZXBpbmcuIFRoZQ0KPj4gcWRhX2dlbV9wcmltZV9pbXBvcnQo
KSBwYXRoIGhhbmRsZXMgcmVpbXBvcnRzIG9mIGJ1ZmZlcnMgb3JpZ2luYWxseQ0KPj4gZXhwb3J0
ZWQgYnkgUURBIGFzIHdlbGwgYXMgaW1wb3J0cyBvZiBleHRlcm5hbCBkbWEtYnVmcywgYXR0YWNo
aW5nIHRoZW0NCj4+IHRvIHRoZSBhc3NpZ25lZCBJT01NVSBkZXZpY2UNCj4gVGhhdCBpcyB1c3Vh
bGx5IGFuIGFic29sdXRlbHkgY2xlYXIgTk8tR08gZm9yIERNQS1idWZzLiBXaGVyZSBleGFjdGx5
IGluIHRoZSBjb2RlIGlzIHRoYXQ/DQpkbWFfYnVmX2F0dGFjaCogdG8gY29tdXRlLWNiIGlvbW11
IGRldmljZXMgYXJlIGNyaXRpY2FsIGZvciBEU1BzIHRvIGFjY2VzcyB0aGUgYnVmZmVyLg0KVGhp
cyBpcyBuZWVkZWQgaWYgdGhlIGJ1ZmZlciBpcyBleHBvcnRlZCBieSBhbnlvbmUgb3RoZXIgdGhh
biBRREEoc2F5IHN5c3RlbSBoZWFwKS4gSWYgdGhpcyBpcyBub3QNCnRoZSBjb3JyZWN0IHdheSwg
d2hhdCBzaG91bGQgYmUgdGhlIHJpZ2h0IHdheSBoZXJlPyBPbiB0aGUgY3VycmVudCBmYXN0cnBj
IGRyaXZlciBhbHNvLA0KdGhlIERNQUJVRiBpcyBnZXR0aW5nIGF0dGFjaGVkIHdpdGggaW9tbXUg
ZGV2aWNlWzFdIGR1ZSB0byB0aGUgc2FtZSByZXF1aXJlbWVudC4NCg0KWzFdIGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQv
dHJlZS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jI243NzkNCj4NCj4+IGFuZCBtYXBwaW5nIHRoZW0g
dGhyb3VnaCB0aGUgbWVtb3J5IG1hbmFnZXINCj4+IGZvciBEU1AgYWNjZXNzLiBUaGUgR0VNIGZy
ZWUgcGF0aCBpcyB1cGRhdGVkIHRvIHVubWFwIGFuZCBkZXRhY2gNCj4+IGltcG9ydGVkIGJ1ZmZl
cnMgd2hpbGUgcHJlc2VydmluZyB0aGUgZXhpc3RpbmcgYmVoYXZpb3VyIGZvciBsb2NhbGx5DQo+
PiBhbGxvY2F0ZWQgbWVtb3J5Lg0KPj4NCj4+IFRoZSBQUklNRSBmZC10by1oYW5kbGUgcGF0aCBp
cyBpbXBsZW1lbnRlZCBpbiBxZGFfcHJpbWVfZmRfdG9faGFuZGxlKCksDQo+PiB3aGljaCByZWNv
cmRzIHRoZSBjYWxsaW5nIGRybV9maWxlIGluIGEgZHJpdmVyLXByaXZhdGUgaW1wb3J0IGNvbnRl
eHQNCj4+IGJlZm9yZSBpbnZva2luZyB0aGUgY29yZSBEUk0gaGVscGVycy4gVGhlIEdFTSBpbXBv
cnQgY2FsbGJhY2sgcmV0cmlldmVzDQo+PiB0aGlzIGNvbnRleHQgdG8gZW5zdXJlIHRoYXQgYW4g
SU9NTVUgZGV2aWNlIGlzIGFzc2lnbmVkIHRvIHRoZSBwcm9jZXNzDQo+PiBhbmQgdGhhdCBpbXBv
cnRlZCBidWZmZXJzIGZvbGxvdyB0aGUgc2FtZSBwZXItcHJvY2VzcyBJT01NVSBzZWxlY3Rpb24N
Cj4+IHJ1bGVzIGFzIG5hdGl2ZWx5IGFsbG9jYXRlZCBHRU0gb2JqZWN0cy4NCj4+DQo+PiBUaGlz
IHBhdGNoIHByZXBhcmVzIHRoZSBkcml2ZXIgZm9yIGludGVyb3BlcmFibGUgYnVmZmVyIHNoYXJp
bmcgYmV0d2Vlbg0KPj4gUURBIGFuZCBvdGhlciBkbWEtYnVmIGNhcGFibGUgc3Vic3lzdGVtcyB3
aGlsZSBrZWVwaW5nIElPTU1VIG1hcHBpbmcgYW5kDQo+PiBsaWZldGltZSBoYW5kbGluZyBjb25z
aXN0ZW50IHdpdGggdGhlIGV4aXN0aW5nIEdFTSBhbGxvY2F0aW9uIGZsb3cuDQo+Pg0KPj4gU2ln
bmVkLW9mZi1ieTogRWthbnNoIEd1cHRhIDxla2Fuc2guZ3VwdGFAb3NzLnF1YWxjb21tLmNvbT4N
Cj4gLi4uDQo+DQo+PiBAQCAtMTUsMjMgKzE2LDI5IEBAIHN0YXRpYyBpbnQgdmFsaWRhdGVfZ2Vt
X29ial9mb3JfbW1hcChzdHJ1Y3QgcWRhX2dlbV9vYmogKnFkYV9nZW1fb2JqKQ0KPj4gICAgICAg
ICAgICAgICAgIHFkYV9lcnIoTlVMTCwgIkludmFsaWQgR0VNIG9iamVjdCBzaXplXG4iKTsNCj4+
ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+ICAgICAgICAgfQ0KPj4gLSAgICAg
ICBpZiAoIXFkYV9nZW1fb2JqLT5pb21tdV9kZXYgfHwgIXFkYV9nZW1fb2JqLT5pb21tdV9kZXYt
PmRldikgew0KPj4gLSAgICAgICAgICAgICAgIHFkYV9lcnIoTlVMTCwgIkFsbG9jYXRlZCBidWZm
ZXIgbWlzc2luZyBJT01NVSBkZXZpY2VcbiIpOw0KPj4gLSAgICAgICAgICAgICAgIHJldHVybiAt
RUlOVkFMOw0KPj4gLSAgICAgICB9DQo+PiAtICAgICAgIGlmICghcWRhX2dlbV9vYmotPmlvbW11
X2Rldi0+ZGV2KSB7DQo+PiAtICAgICAgICAgICAgICAgcWRhX2VycihOVUxMLCAiQWxsb2NhdGVk
IGJ1ZmZlciBtaXNzaW5nIElPTU1VIGRldmljZVxuIik7DQo+PiAtICAgICAgICAgICAgICAgcmV0
dXJuIC1FSU5WQUw7DQo+PiAtICAgICAgIH0NCj4+IC0gICAgICAgaWYgKCFxZGFfZ2VtX29iai0+
dmlydCkgew0KPj4gLSAgICAgICAgICAgICAgIHFkYV9lcnIoTlVMTCwgIkFsbG9jYXRlZCBidWZm
ZXIgbWlzc2luZyB2aXJ0dWFsIGFkZHJlc3NcbiIpOw0KPj4gLSAgICAgICAgICAgICAgIHJldHVy
biAtRUlOVkFMOw0KPj4gLSAgICAgICB9DQo+PiAtICAgICAgIGlmIChxZGFfZ2VtX29iai0+ZG1h
X2FkZHIgPT0gMCkgew0KPj4gLSAgICAgICAgICAgICAgIHFkYV9lcnIoTlVMTCwgIkFsbG9jYXRl
ZCBidWZmZXIgbWlzc2luZyBETUEgYWRkcmVzc1xuIik7DQo+PiAtICAgICAgICAgICAgICAgcmV0
dXJuIC1FSU5WQUw7DQo+PiArICAgICAgIGlmIChxZGFfZ2VtX29iai0+aXNfaW1wb3J0ZWQpIHsN
Cj4gQWJzb2x1dGVseSBjbGVhciBOQUsgdG8gdGhhdC4gSW1wb3J0ZWQgYnVmZmVycyAqY2FuJ3Qq
IGJlIG1tYXBlZCB0aHJvdWdoIHRoZSBpbXBvcnRlciENCj4NCj4gVXNlcnNwYWNlIG5lZWRzIHRv
IG1tYXAoKSB0aGVtIHRocm91Z2ggdGhlIGV4cG9ydGVyLg0KPg0KPiBJZiB5b3UgYWJzb2x1dGVs
eSBoYXZlIHRvIG1hcCB0aGVtIHRocm91Z2ggdGhlIGltcG9ydGVyIGZvciB1QVBJIGJhY2t3YXJk
IGNvbXBhdGliaWxpdHkgdGhlbiB0aGVyZSBpcyBkbWFfYnVmX21tYXAoKSBmb3IgdGhhdCwgYnV0
IHRoaXMgaXMgY2xlYXJseSBub3QgdGhlIGNhc2UgaGVyZS4NCj4NCj4gLi4uDQpPa2F5LCB0aGUg
cmVxdWlyZW1lbnQgaXMgc2xpZ2h0bHkgZGlmZmVyZW50IGhlcmUuIEFueSBidWZmZXIgd2hpY2gg
aXMgbm90IGFsbG9jYXRlZCB1c2luZyB0aGUNClFEQSBHRU0gaW50ZXJmYWNlIG5lZWRzIHRvIGJl
IGF0dGFjaGVkIHRvIHRoZSBpb21tdSBkZXZpY2UgZm9yIHRoYXQgcGFydGljdWxhciBwcm9jZXNz
IHRvDQplbmFibGUgRFNQIGZvciB0aGUgYWNjZXNzLiBJIHNob3VsZCBub3QgY2FsbCBpdCBgbW1h
cGAgaW5zdGVhZCBpdCBzaG91bGQgYmUgY2FsbGVkIGltcG9ydGluZyB0aGUNCmJ1ZmZlciB0byBh
IHBhcnRpY3VsYXIgaW9tbXUgY29udGV4dCBiYW5rLiBXaXRoIHRoaXMgZGVmaW5pdGlvbiwgaXMg
aXQgZmluZSB0byBrZWVwIGl0IHRoaXMgd2F5PyBPcg0Kc2hvdWxkIHRoZSBkbWFfYnVmX2F0dGFj
aCogY2FsbHMgYmUgbW92ZWQgdG8gc29tZSBvdGhlciBwbGFjZT8NCj4+ICtzdGF0aWMgaW50IHFk
YV9tZW1vcnlfbWFuYWdlcl9tYXBfaW1wb3J0ZWQoc3RydWN0IHFkYV9tZW1vcnlfbWFuYWdlciAq
bWVtX21nciwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgcWRhX2dlbV9vYmogKmdlbV9vYmosDQo+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IHFkYV9pb21tdV9kZXZpY2UgKmlvbW11X2RldikNCj4+
ICt7DQo+PiArICAgICAgIHN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQo+PiArICAgICAgIGRtYV9h
ZGRyX3QgZG1hX2FkZHI7DQo+PiArICAgICAgIGludCByZXQgPSAwOw0KPj4gKw0KPj4gKyAgICAg
ICBpZiAoIWdlbV9vYmotPmlzX2ltcG9ydGVkIHx8ICFnZW1fb2JqLT5zZ3QgfHwgIWlvbW11X2Rl
dikgew0KPj4gKyAgICAgICAgICAgICAgIHFkYV9lcnIoTlVMTCwgIkludmFsaWQgcGFyYW1ldGVy
cyBmb3IgaW1wb3J0ZWQgYnVmZmVyIG1hcHBpbmdcbiIpOw0KPj4gKyAgICAgICAgICAgICAgIHJl
dHVybiAtRUlOVkFMOw0KPj4gKyAgICAgICB9DQo+PiArDQo+PiArICAgICAgIGdlbV9vYmotPmlv
bW11X2RldiA9IGlvbW11X2RldjsNCj4+ICsNCj4+ICsgICAgICAgc2cgPSBnZW1fb2JqLT5zZ3Qt
PnNnbDsNCj4+ICsgICAgICAgaWYgKHNnKSB7DQo+PiArICAgICAgICAgICAgICAgZG1hX2FkZHIg
PSBzZ19kbWFfYWRkcmVzcyhzZyk7DQo+PiArICAgICAgICAgICAgICAgZG1hX2FkZHIgKz0gKCh1
NjQpaW9tbXVfZGV2LT5zaWQgPDwgMzIpOw0KPj4gKw0KPj4gKyAgICAgICAgICAgICAgIGdlbV9v
YmotPmltcG9ydGVkX2RtYV9hZGRyID0gZG1hX2FkZHI7DQo+IFdlbGwgdGhhdCBsb29rcyBsaWtl
IHlvdSBhcmUgb25seSB1c2luZyB0aGUgZmlyc3QgRE1BIGFkZHJlc3MgZnJvbSB0aGUgaW1wb3J0
ZWQgc2d0LiBXaGF0IGFib3V0IHRoZSBvdGhlcnM/DQpJIG1pZ2h0IGhhdmUgYSBwcm9wZXIgYXBw
YWNoIGZvciB0aGlzIG5vdywgd2lsbCB1cGRhdGUgaW4gdGhlIG5leHQgc3Bpbi4NCj4NCj4gUmVn
YXJkcywNCj4gQ2hyaXN0aWFuLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
