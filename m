Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAvvII4U4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F94641222D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7971B450FD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:55:41 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 6D62A404A7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 14:20:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=lCLZuHlf;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=RVZ3Xmua;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TB6c2365333
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 14:20:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EtyOE2hUVljy+kbFE5PibxyFcc/R7aXCK4PQrjUFn2o=; b=lCLZuHlf8TyAjJm3
	u3rme9fFAEMEi7u536FDPUL5nlAy5jiQp4VpF1GwY2/RJhELgyk1DwwPJRciUo9f
	G6UtslgOw5RylV8+vIzZxzMkscSgIcWthwhfKep4VCv3qiZH2jlFNOMtWoa46lcX
	6KcSkfDa2N+ZoxRrbkVfKOoXzCQaocEd0HhJDFA+sXLsHChPj9nrDPFepT1nqWVI
	IZ36rErEHBHfnY7GWhBi1tYt4FOiBTs7/fvZPcQLxGXvO1vVknuj6NlwUVlasWB5
	3wFujOQ6K2RIpoDNlYCvW7z0Q1Es0jss86QZ/6e/PluRBy/m1UvZ3r/40OqsZ3/M
	2XHL/g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cherjbtgu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 14:20:27 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aaf2ce5d81so87051155ad.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 06:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772029227; x=1772634027; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EtyOE2hUVljy+kbFE5PibxyFcc/R7aXCK4PQrjUFn2o=;
        b=RVZ3XmuaX/fm8z4bN5iFI45+cUyOb5ESNH42uciSAytDqmqjq66lqZxtVfsupFi5gP
         qXWyhY8/fm61vVzIR2vuaZOXxNeKDtfZa0upbrQIjsGmM+6dvE/lLhaDfnbPl3b+xzuH
         U5al0zk/Ynl+EKvaRjO76UY9zi+HmewdXEfntVDnEsoZLqFSZGcxFWpIMh/DJ+Xo55bl
         M43XmMZto6fD5Lyh07GVUeZSz+ntVJXfJ6t+w1psw/9gm/z+1/R9Y5dSv/uL7U7VrJyJ
         5KiogBgkgsTJqN9krX1Ek8VLn9HR+tNWwYeOpsj7dM4UhdCpbS1emlGDnL/Sl9JKL/1e
         OwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772029227; x=1772634027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EtyOE2hUVljy+kbFE5PibxyFcc/R7aXCK4PQrjUFn2o=;
        b=podlmZpMO47TAyG1OiInOUodCDKrFMvpdFsxaaIFC6/7IMB1Y7zIo0hEMugs78QEr1
         +OmAVbtd180GUyExdLo72GmyIAZbhmD4lOoyv/mJXGzmX9ZQEJ/sM4LAiDC1ShwTWQGd
         +ocJw+ahxmqsdWLFhErUmRhIVVRDbVzhBigGQzcLMMb5qvhgSxyTF9FQzRz4JkAYU++C
         CWD3aa8yXy8J4uQ4GX7ML/XC8YS0qg7OZXGhTaUfUU0kNFy0NitbTMXYH4/gZHpcqgv2
         2ukkRwD8KKCqVCmWZbWNaAJ+yGtlv+rsxPhISpFNbPQCwOxxq37Z0qx4vOE841eKukv7
         ivFA==
X-Forwarded-Encrypted: i=1; AJvYcCW9YbR/Vhk4af0uIlmD4DwT+xaK6iH6OyzprekITtwDSchHKvVym0ZVcuyqqOsbkMsPGuIIX7+pFqSbecCR@lists.linaro.org
X-Gm-Message-State: AOJu0Yx40tPmoBpKmIxZEq4B0+aoqEUHuQeAC/lWBnMLZXnOrKsIpR+J
	ZQDEKQFtJQ7aTRecHgAJ6d30RMXnVz6xqvEn1nr/3AmyX8r7c5u8K8Ide0AbG9i52cngGef8Os2
	AVTYv9Y4uofweErC4tOiA9ZoBk6EBr8QcIfWGFNDOsnVoGbEJapHIwcF1xhTfXsfjyU5GBg==
X-Gm-Gg: ATEYQzzz9uJEptj1I2+OB/vS/NXv1p6V6Ep+po31Hkd2iPE6EvPMqOhTd+oi9GFvxAn
	2QeRfum4SLq+nJD6fqMyIwZEccWbUIXPF8Z9mBYFxlAvtDGXQySRZWmXIN+v+N/v98dn3R2dYXb
	vNaVoOEUkOhVYbeWS63VG0HOajxyaxKGB/m7eMmg7+hirLlPHblnbu2z1CNMFsE8wRh4dmLDNFC
	8aDcjQAbrfpjWyRY+yq2n/AnwbHZf+o3/Liuo0zOc5JxhJl9UlBzoIsjN+PrQtkTMffVTC5jVi6
	Ib4+cWkfBpJS5rkWUqaBhzNPPABoV6aunb88XZd0gmYv/YmVR5F4bZI0QSINgjzpI/xwZtFQaa+
	ozAdww8ngD7KwiMrOaqhQMQ+LKNgvw69kjEQYRUMcp/vN9+ydPqw=
X-Received: by 2002:a17:902:d485:b0:2a9:2ab2:e50d with SMTP id d9443c01a7336-2ade9aa21a7mr3608355ad.51.1772029226454;
        Wed, 25 Feb 2026 06:20:26 -0800 (PST)
X-Received: by 2002:a17:902:d485:b0:2a9:2ab2:e50d with SMTP id d9443c01a7336-2ade9aa21a7mr3608015ad.51.1772029225935;
        Wed, 25 Feb 2026 06:20:25 -0800 (PST)
Received: from [192.168.1.5] ([171.61.227.247])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f5e55dsm142051345ad.30.2026.02.25.06.20.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 06:20:25 -0800 (PST)
Message-ID: <b6519bfc-7931-4985-aaf1-1aaf1fe5aa88@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 19:50:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bjorn Andersson <andersson@kernel.org>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-2-fe46a9c1a046@oss.qualcomm.com>
 <elu44euja7d7nnnhdmdqgof76646b3m3isjmws5pr274gqhy2a@dbeq4hk74ebo>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <elu44euja7d7nnnhdmdqgof76646b3m3isjmws5pr274gqhy2a@dbeq4hk74ebo>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEzNyBTYWx0ZWRfX73dY9hqdxJKU
 R49PWglu4mSCCuivGRc6kafJHsixbERpVHvn5DfMoMCfpjvSTZKAm78AT/0dsBqJ5v3BelZep4/
 DmsZUYNHpY1nNsla2VaIejWW4kr4Gx90eWfB1hGYYa8TI840oFYkdEMffhJp+NecDxxzu6erP46
 H98HWyps3vgODYHUcIolqmrcS19n8BijTNQiqrvGEub1zrh8syapi/NLAdk/aL+bOConcxI7TUO
 ofbqHdKhO9C2ufHJgS8t4bRdDCiKl1F2hzhoSoEeALxNEFLXdJmEHAwfWTT9NvTdlX2pBIs75ig
 +VQs1w8qihRtJtSwCiaN+FuGmlE+21ZJyXz+KeG+oqIO8FmcvaPD+uAUqAJhm0KAsYUqF/cp2XT
 n4Ceow5RJqxv8Hbh0++g1c8HDTfV3uOwniet5COrDHr0ns+WPsMatae0BMKkPxxTw9cqP1usRNy
 7A1MVPsxUofUfVUklyA==
X-Proofpoint-GUID: wHfhfocmD8BPy9J4buIZFkiYKfjkx1Uq
X-Proofpoint-ORIG-GUID: wHfhfocmD8BPy9J4buIZFkiYKfjkx1Uq
X-Authority-Analysis: v=2.4 cv=NeDrFmD4 c=1 sm=1 tr=0 ts=699f052b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=CLJ8B99oKJtQbdnoKiLypA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=tV0izz4fD985yFSgC6wA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_01,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250137
X-Spamd-Bar: ---
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6HTA4BMGXH4QECHO73UZSUXJD7OULO7D
X-Message-ID-Hash: 6HTA4BMGXH4QECHO73UZSUXJD7OULO7D
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:06 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 02/18] accel/qda: Add Qualcomm DSP accelerator driver skeleton
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6HTA4BMGXH4QECHO73UZSUXJD7OULO7D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5F94641222D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 3:22 AM, Bjorn Andersson wrote:
> On Tue, Feb 24, 2026 at 12:38:56AM +0530, Ekansh Gupta wrote:
> [..]
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> new file mode 100644
>> index 000000000000..18b0d3fb1598
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -0,0 +1,22 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +#include <linux/module.h>
>> +#include <linux/kernel.h>
>> +
>> +static int __init qda_core_init(void)
>> +{
>> +	pr_info("QDA: driver initialization complete\n");
> This print is useless as soon as you make the driver do anything, please
> don't include developmental debug logs.
>
>
> In fact, this patch doesn't actually do anything, please squash things a
> bit to give it some meat.
>
> Regards,
> Bjorn
Ack, will squash the next commit with this one.
>
>> +	return 0;
>> +}
>> +
>> +static void __exit qda_core_exit(void)
>> +{
>> +	pr_info("QDA: driver exit complete\n");
>> +}
>> +
>> +module_init(qda_core_init);
>> +module_exit(qda_core_exit);
>> +
>> +MODULE_AUTHOR("Qualcomm AI Infra Team");
>> +MODULE_DESCRIPTION("Qualcomm DSP Accelerator Driver");
>> +MODULE_LICENSE("GPL");
>>
>> -- 
>> 2.34.1
>>
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
