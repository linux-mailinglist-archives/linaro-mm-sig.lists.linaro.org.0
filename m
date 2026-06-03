Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DNUwMMpIKWprTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2D1668B29
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=l8j4zNtb;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A624D40A52
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:21:45 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id A983B3F949
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:46:46 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6535WGMN752988
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:46:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QJ3nOU6oOP2wb3RgvzWm2gp1FwA+8QQfS/PIwJ4FYWA=; b=l8j4zNtbaNo9Nw2A
	dI861FKta50sP94zsAFz9s/HbxVQJGYtbZTU2VKRrawcVwcmjArJCbq0vLiB7uko
	TqsWqSXPjhAYWSPF5mi1LZCU65HiO7bA10vMCnENN5ctlYxx742kBHkKvrWgFODQ
	X5Xw8JTjr/cBAoH7UvLA1+rBgO2rLZEQFrVs/NTqTgbLtYeXyEGSwvdywLjO90QK
	rUZBHOjPcSqFNwUow8/nseSuP41yZlhym007DBINCXH8wwdLwLK+IlmzKZFXcDYy
	LvqTBWpN4jSXiXqGARQS11F5LpoA+bicR5UPgRXZ7kF47zWEJkUo0G+erkD7mDGJ
	QqVu7g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ej6a9hthp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:46:45 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-36d99629fd6so5327763a91.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780465605; x=1781070405; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QJ3nOU6oOP2wb3RgvzWm2gp1FwA+8QQfS/PIwJ4FYWA=;
        b=EBhKlJTXegzVu3o5lWjcR9h/CN3dj10Mck0T7wY7BVcMaLKqA9rCM6eaJNmYr7uRuM
         xW9ngybPJxBtrg+QLP0RibZbnuyds3LSu1NufnWVnt8ZrA2K9FV+wu/WQe5dnLW4CSHK
         AjfCuONsW6j4HfxNdAZNJRQLRx0K1MQCW6xXpxInrdPqzCC1LrlOkBkFHeZ+FB3fCFAc
         v5Li/rTRrd4QXmWmxrBjTheNZwtx3eYKytrvmuan5TKofkZ5j2Wx9j/0rh6Hfglos0el
         0Dgzo+ANFTV1ttnqHrOyb+jZQNXXsyRAG2N/mXLG0teoK3xIxyDK5PUPc9aRUeFNj1BC
         T1vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780465605; x=1781070405;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QJ3nOU6oOP2wb3RgvzWm2gp1FwA+8QQfS/PIwJ4FYWA=;
        b=p8T9t+unPVQ++Yl2RWaGa0ADLPo1gak27hr9D1y456Z6QfxHIpYtRVQUDMkFXSs3IA
         zgD1sxoJ9CwA93ghck4jknVeAjStHqLonEZvlc761mAdDPXaGNuWy0s4sQS0uBHoqhQC
         ESXPJ1H2lETrp8Ax8BI7tZGMZpuhZFLHhRVX/kG9rAe4RIp7eg/BZGaxfOcETtZ09ZVf
         xfVb3ByzzsOdZvZs9B+H8gBCnScm/RCe+ptsYCjb/7E20i+DR5UGLP2K2BpxIgSwdLxQ
         Yx00u8863oHDOKluvqUTcifKu+jGqufTaBKiIo1u8+WHUXhuDg5cxz3fXADKAdkKrOYV
         wzGw==
X-Forwarded-Encrypted: i=1; AFNElJ+HllnkO62m7DHigaQ7UkzAvz0vMQISj9dxVlvf9qqJJIYeMtMIgtfzMRg8OEtR0xa6kD43SHAsHCMNgjMF@lists.linaro.org
X-Gm-Message-State: AOJu0YzrH8XJYBQ3m5pUHhsZ1sYlqHF8CjZXrQzSrtKyQaT1E+C7lW9r
	oh80ULKsy4gOAH+oJ6CtN3Ldt0yd3edzwidoiMKRdmb0Tr6SUjj0D18eXaMNZtu5Y1K9mj8F95O
	5oHT1ytyITsI7p1IXvPKvhp/3BsdRSzVPiYo+HwcpV9TsYepfdHF76QxTZdYzGlKSRUQzug==
X-Gm-Gg: Acq92OHDUoGl9PgQjfObETr5BhxfyknMz8G6gozazRalKF5UzLabAPTdZqg1kAc0wj+
	r+d0EvdU17dn6C5WcbOyvE5EnBwQsz2fF3/C+c5uZNx5FUR7i29ex+sU+maxNP0JmS/uCPwn7ow
	VsF5MYDnEx1LDFjwRqg8b38bqsCL8mGXlR2jLKXzPIC2RLkDrtcIMmXyuNSs7f2lhwvOXJS/5kR
	dgZOsmlphdo8DW6tLu8/3o1HgFw6sR4bBXd9PMd4e+IQRWscUB1VceOKODwQL3iAgcUg/bhSnYf
	mAh5PH3lGuS6Xj/SzM7R1iFQTgw2vj0tftjndvIKOEzCDAQzShIYgbDLjLkKLevodcxA+ZHNLVz
	eAFQyqoMGR6Oq9ULbaPXe9wOlffKRwJYvIPnQyCPtxZj4Bb5666w7Rm0bj6cb
X-Received: by 2002:a17:90b:3a90:b0:35f:b6a1:8d27 with SMTP id 98e67ed59e1d1-36e33bb9354mr1974886a91.18.1780465604807;
        Tue, 02 Jun 2026 22:46:44 -0700 (PDT)
X-Received: by 2002:a17:90b:3a90:b0:35f:b6a1:8d27 with SMTP id 98e67ed59e1d1-36e33bb9354mr1974830a91.18.1780465604223;
        Tue, 02 Jun 2026 22:46:44 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16649ca4dsm10999325ad.76.2026.06.02.22.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:46:43 -0700 (PDT)
Message-ID: <f146f972-6508-4147-86f1-2b88c80e1c89@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 11:16:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-7-b2d984c297f8@oss.qualcomm.com>
 <a6n2qquynwzlquzqmnmjmkg6vkrldj42muuejwzln5wna2qmhi@ki2slzuyt5qw>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <a6n2qquynwzlquzqmnmjmkg6vkrldj42muuejwzln5wna2qmhi@ki2slzuyt5qw>
X-Proofpoint-GUID: xdZsgNOY5kPkIE3LYlR1Kikvcyogsyn_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA1MyBTYWx0ZWRfX5LJkBOLXnZwm
 b/vEDvNP0sAMaVXfPCNGAyjdKDJs4RRtu6wOmcrGR0oao8UFToOwi2yM90v6iqiSVJVdMZCKYtR
 AF9s+VuChy77p6JcCi94ALe3Alcyan+uMKya73SGL3bRPcxJYDZaDanMNDOHMoKQXrIdoaIMz9E
 9PDU0w8d0HNSOo0e1obeXE1s6sYHXk53w1Qgcr5/FWR4VXAuhA3A5Oo3VJ64Lx0S9txEIoSqoxO
 dDVyJ2WIXU/WqsfttlXSWIqK/kvsUXm6X5W6lTggjsyV5hHw6Bwpn9sKyA24EGoVT7YZk2ZB4nZ
 ga+mNefDo9orzEJGEjQPGHuKdjyJJKQNUKAMcyAnLZ8YgGTmjxFB7Bx2v+nvstUyAqY5ZOPnLED
 xlNTlWjOrfRW1wCucX3YLhZuooKWE/iLdz/p0xo1TqeE09a8vyEVcShsuSM+RoDtoqvkK4/bv9W
 NkZLQOPQsE81JlRlxGA==
X-Authority-Analysis: v=2.4 cv=I/9Vgtgg c=1 sm=1 tr=0 ts=6a1fbfc5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=LzV4jstc-Az_XmsxRYMA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: xdZsgNOY5kPkIE3LYlR1Kikvcyogsyn_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030053
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TPJDAA64Y672J7JNJSKID25REMCBO6QJ
X-Message-ID-Hash: TPJDAA64Y672J7JNJSKID25REMCBO6QJ
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:21 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/15] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TPJDAA64Y672J7JNJSKID25REMCBO6QJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[173];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F2D1668B29

On 20-05-2026 19:57, Dmitry Baryshkov wrote:
> On Tue, May 19, 2026 at 11:45:57AM +0530, Ekansh Gupta via B4 Relay wrote:
>> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>>
>> Introduce the QDA memory manager (qda_memory_manager) to track and
>> manage the IOMMU devices that back each compute context bank (CB).
>>
>> Each CB device registered on the qda-compute-cb bus is assigned a
>> unique ID via an XArray and wrapped in a qda_iommu_device descriptor
>> that records the device pointer and its stream ID. This registry
>> allows the driver to look up the correct IOMMU domain for a given
>> session when mapping DSP buffers.
>>
>> The memory manager is initialised in qda_init_device() before CB
>> devices are populated and torn down in qda_deinit_device() after they
>> are destroyed, ensuring no dangling references remain in the XArray.
>>
>> qda_cb.c is extended with qda_cb_setup_device(), which is called
>> immediately after a CB device is registered on the bus. It allocates
>> a qda_iommu_device, registers it with the memory manager, and stores
>> it as the CB device's driver data so that qda_destroy_cb_device() can
>> retrieve and unregister it during teardown.
>>
>> Assisted-by: Claude:claude-4-6-sonnet
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/Makefile             |   1 +
>>  drivers/accel/qda/qda_cb.c             |  47 ++++++++++++++
>>  drivers/accel/qda/qda_drv.c            |  34 ++++++++++
>>  drivers/accel/qda/qda_drv.h            |   5 ++
>>  drivers/accel/qda/qda_memory_manager.c | 111 +++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_memory_manager.h |  49 +++++++++++++++
>>  drivers/accel/qda/qda_rpmsg.c          |   7 +++
>>  7 files changed, 254 insertions(+)
>>
>> @@ -61,14 +62,20 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>>  	}
>>  	qdev->dsp_name = label;
>>  
>> +	ret = qda_init_device(qdev);
>> +	if (ret)
>> +		return ret;
>> +
>>  	ret = qda_cb_populate(qdev, rpdev->dev.of_node);
>>  	if (ret) {
>>  		dev_err(qdev->dev, "Failed to populate child devices: %d\n", ret);
>> +		qda_deinit_device(qdev);
>>  		return ret;
>>  	}
>>  
>>  	ret = qda_register_device(qdev);
>>  	if (ret) {
>> +		qda_deinit_device(qdev);
>>  		qda_cb_unpopulate(qdev);
> 
> No, this is not how you unwind in the error case in the kernel. Follow
> the established patterns.
Okay, I see your point and the same you highlighted on previous patch.
I'll update this.>
>>  		return ret;
>>  	}
>>
>> -- 
>> 2.34.1
>>
>>
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
