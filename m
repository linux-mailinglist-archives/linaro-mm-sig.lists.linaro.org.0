Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHijG3BeBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:20:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D84532132
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:20:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 268EA4049C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:20:15 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 0371F409A8
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2026 06:52:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Knhz77nu;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=TWKOdqMc;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of amirreza.zarrabi@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=amirreza.zarrabi@oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6446DDj03479968
	for <linaro-mm-sig@lists.linaro.org>; Mon, 4 May 2026 06:52:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pw+QGNnD2aXDEvze4NDnuqATbVP5Mz7Pd3Jir1xluBQ=; b=Knhz77nub5NVmsev
	r6pOeYc8F9YwhbJNYoqJK2yWTBREnLWN3p2cr8+VXj8mhmgw4TeOcwefDMnahQA2
	SKMF+rn8M7u47PZKJdg0UBEeCjMF6qSygnFJF1Vpi0HNcSrEyjQYlFs/Fz+nf12B
	xb5xZWxcnBrqZkc2nFHolu/NdWgypSyeOGwyxWW6IpAizir5uPyfdqCAFfC4Mafd
	92oByUhnGHCh9EA9I3POBhYYmxFP6HH0zAiHid5ZbHw5pnn4cIl/0p1LcszXSUaO
	ktFnufIUNGCY9IuhuZd5oh0/xwy4vbBEIF1FUi0AopxBjTW7jVP4UXS6I/G64iF9
	uTiTcQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dw9g3mmp2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 04 May 2026 06:52:35 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b2e06219cbso32453975ad.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 03 May 2026 23:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777877555; x=1778482355; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pw+QGNnD2aXDEvze4NDnuqATbVP5Mz7Pd3Jir1xluBQ=;
        b=TWKOdqMcVPmHomtqrBP46Q/XowHdUYHv47ewzf5/lxyxRx10Z4OdvFwSNlDIVMSmEH
         pUTF4hy18kYvC6akEQMXqYWXRbQBybfxNG7evosm2oew6DWL37mMiby68yKw30B2RjJw
         h+K2AaMxoknxxGzozI1ZkVkd5pRS/NnGU5uxJ4hXwe6sy7d5hmDZHelkB4oHnjcnW78y
         +/sLZiwytErLGXPhi5ezHHDMZGeBCvdGWixv1on6bchDDXGLzaYDl70ODpE40iylF2LB
         404GSUZ+BJhP8ICqp6ofEAf8/SC/zypEaQqv95L4Zr+ou/Pv0e8nP30W6Amtw1XhJnjK
         iXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777877555; x=1778482355;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pw+QGNnD2aXDEvze4NDnuqATbVP5Mz7Pd3Jir1xluBQ=;
        b=TR7TkVJheGGNCm2tz+xeUFDKmdQOpfv3DYUrXmJO+KBHMpw2q8HNGxzft/htN7RjyO
         bqcByTvvxJ+fJ5M2G10Q9xKzEg/qObX0llHIk/4B8Qv1+9JZfzLdi10IUkGHT/mNC9pc
         RSMI90vNp7JixtyUVsqyukI8hx0kWZc0OuWP0TlmKeL7i/d+6j9vsSWC2sgbaWq/VWlf
         vYJF93EiBdYUj6+ipqqnb16XEYg0BMQmHRdm+qOkEARMTgDpp+Y3Y9EXryyXqnmUlZR1
         NmBtUbQ4BT8TJJvzQF6yJQoTkj+SxukY5p5eZ7uHtTiAzCxxKtqA1na/NRTK1YWH0uIl
         QoeA==
X-Forwarded-Encrypted: i=1; AFNElJ80LkOQe6lat7AXX6gdEmsf5dudp3PTLtQjM1lpdGWgy2HB/nfwB/5nYlAG5h1MrcjggnXEs3aUx3qEoC6h@lists.linaro.org
X-Gm-Message-State: AOJu0YzaKgCsau7qfpocyPHliTxhC5VNZEwB7CGYUPVTIvrHqzq19FAT
	7t3n0TQPnl7/spaLedzxaAKXXi6C++YCiif8OuHUPjdkZ7P/VzCqFF4Drq7WZ8xh+SYDJjMs0C9
	blc9hzpBSnuwHGBVc5LKa77t8AEedm97xowpYoVhqY1KkXbdZKAWQNc4hhEeSaq9041rU
X-Gm-Gg: AeBDietB50xgKmjj5h2smWgdeeamictj8d2T4u3ubaLY1A5HIaezlhhkFIbmH9f1Ctu
	x8Iao2NuE4FKM3tWO/njG8nE5oX+aIvClbq1rME0QZaLd02mmnshlYSNO63BW1oXmyENYDHCPGG
	DJIyVGBKw7w9SaLGIbz/yhgmslx0EQY+EBdc1eiuouoZuzfgmtggftlL7bawmDTGjjXyNQJnVmF
	iCcnivPR+J3uuBx1VJBz8Ke8tnk5hx722pZX/F5dIG9+ZzRArvakW66JtSInH1Yl/tE2Rn0lp1w
	ZGiazbBwfHjHOoGGDnGDfN+E75kNe/iUyE8Uu8R3mFoaT8/dmLtq9wvVoLq2J4uVd7z66J4ylZ1
	05NoVakiloIcFZesp4EKf6kRRfAxpfC6AuLytqpYrDN2WuIFKgmNwYCzC52XzEr/eHk71WelvIm
	PWYrPf9hxz1CqptRcmMFS86MBxPagfqw==
X-Received: by 2002:a17:902:ce08:b0:2aa:d5e5:b136 with SMTP id d9443c01a7336-2b9f284e08dmr89328625ad.38.1777877555126;
        Sun, 03 May 2026 23:52:35 -0700 (PDT)
X-Received: by 2002:a17:902:ce08:b0:2aa:d5e5:b136 with SMTP id d9443c01a7336-2b9f284e08dmr89328255ad.38.1777877554527;
        Sun, 03 May 2026 23:52:34 -0700 (PDT)
Received: from [192.168.0.74] (n1-41-240-65.bla22.nsw.optusnet.com.au. [1.41.240.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b9caa7e791sm93849295ad.7.2026.05.03.23.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 May 2026 23:52:33 -0700 (PDT)
Message-ID: <e73bc74f-ede9-484e-b171-a7bbdb2c7c21@oss.qualcomm.com>
Date: Mon, 4 May 2026 16:52:24 +1000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250910-qcom-tee-using-tee-ss-without-mem-obj-v11-0-520e867b3d74@oss.qualcomm.com>
 <20250910-qcom-tee-using-tee-ss-without-mem-obj-v11-8-520e867b3d74@oss.qualcomm.com>
 <ljfhoo5o45m3t5fsqypg75c46qohvszd5azcqxyjdcr5unx7ob@vcgip4yzkmmn>
Content-Language: en-US
From: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
In-Reply-To: <ljfhoo5o45m3t5fsqypg75c46qohvszd5azcqxyjdcr5unx7ob@vcgip4yzkmmn>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDA3MiBTYWx0ZWRfX22eaZgsiTvEY
 mNrIRgYUCXk+ch0RAl6o/MWUzrTtga/nClxQvyCpWboHCHi8AKw1ogFn6uuKiNgWv99cl8KPg9/
 LMjifLF4YQ+16KGGc6AEw+pwCOkC78tLRLSMB2LdGXvEoBCyQ22R9jI4MZzH/aJF3YJBriL0C4j
 W6H97xRXQM+lm+Q7TzYcRCxp7gKtv9Ud2RCDjXHiprJxJ0U7IVZjjUoWkEbFsgZ+K+iIFYS3iw9
 SORodCxyvgwalXBT4MMMuaL1zwGzB+1YUip2VTbFSpY9FaLuFpxSAMZn+u2Rm7yTqaHeKPKFU9v
 Qv4+VgDCM06ZHtfaI0/aNM8/0YRrG6/1sWhi2nhVOFdubmxdrg7OBuU6QnBbOkk8t5cN2A643bD
 G6bll/ghP13FHLao9UzDoxeXFKHBzsxJCpi99BHaickMamgsTzhZ/AK2e85NFScSVhBLfHTGThJ
 4HhTpHAdk1/ugrnTucg==
X-Proofpoint-GUID: _jfhofchuwtXFJMtHPHf7oZ7GFpoaCmR
X-Authority-Analysis: v=2.4 cv=Ge4nWwXL c=1 sm=1 tr=0 ts=69f84233 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=hi51d+lTLNy/RbqRqnOomQ==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=NEAV23lmAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=t0CO8BxZkIs7AVVQ4zsA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: _jfhofchuwtXFJMtHPHf7oZ7GFpoaCmR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605040072
X-Spamd-Bar: ---
X-MailFrom: amirreza.zarrabi@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 42JR5ATZEM5QO62VALQNQ6CU7HOOLY7B
X-Message-ID-Hash: 42JR5ATZEM5QO62VALQNQ6CU7HOOLY7B
X-Mailman-Approved-At: Wed, 13 May 2026 11:19:38 +0000
CC: Jens Wiklander <jens.wiklander@linaro.org>, Sumit Garg <sumit.garg@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Apurupa Pattapu <quic_apurupa@quicinc.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 08/11] tee: add Qualcomm TEE driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/42JR5ATZEM5QO62VALQNQ6CU7HOOLY7B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 10D84532132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[220];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[amirreza.zarrabi@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.037];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,oss.qualcomm.com:mid]
X-Rspamd-Action: no action

Hi,

On 4/28/2026 7:21 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 10, 2025 at 08:41:21PM -0700, Amirreza Zarrabi wrote:
>> Introduce qcomtee_object, which represents an object in both QTEE and
>> the kernel. QTEE clients can invoke an instance of qcomtee_object to
>> access QTEE services. If this invocation produces a new object in QTEE,
>> an instance of qcomtee_object will be returned.
>>
>> Similarly, QTEE can request services from by issuing a callback
>> request, which invokes an instance of qcomtee_object.
>>
>> Implement initial support for exporting qcomtee_object to userspace
>> and QTEE, enabling the invocation of objects hosted in QTEE and userspace
>> through the TEE subsystem.
>>
>> Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Tested-by: Harshal Dev <quic_hdev@quicinc.com>
>> Acked-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
>> Signed-off-by: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
>> ---
>>  MAINTAINERS                          |   6 +
>>  drivers/tee/Kconfig                  |   1 +
>>  drivers/tee/Makefile                 |   1 +
>>  drivers/tee/qcomtee/Kconfig          |  12 +
>>  drivers/tee/qcomtee/Makefile         |   7 +
>>  drivers/tee/qcomtee/async.c          | 182 +++++++
>>  drivers/tee/qcomtee/call.c           | 813 +++++++++++++++++++++++++++++++
>>  drivers/tee/qcomtee/core.c           | 906 +++++++++++++++++++++++++++++++++++
>>  drivers/tee/qcomtee/qcomtee.h        | 143 ++++++
>>  drivers/tee/qcomtee/qcomtee_msg.h    | 304 ++++++++++++
>>  drivers/tee/qcomtee/qcomtee_object.h | 316 ++++++++++++
>>  drivers/tee/qcomtee/shm.c            | 153 ++++++
>>  drivers/tee/qcomtee/user_obj.c       | 692 ++++++++++++++++++++++++++
>>  include/uapi/linux/tee.h             |   1 +
>>  14 files changed, 3537 insertions(+)
>>
>> +
>> +static int
>> +qcomtee_object_invoke_ctx_invoke(struct qcomtee_object_invoke_ctx *oic,
>> +				 int *result, u64 *res_type)
>> +{
>> +	phys_addr_t out_msg_paddr;
>> +	phys_addr_t in_msg_paddr;
>> +	int ret;
>> +	u64 res;
>> +
>> +	tee_shm_get_pa(oic->out_shm, 0, &out_msg_paddr);
>> +	tee_shm_get_pa(oic->in_shm, 0, &in_msg_paddr);
>> +	if (!(oic->flags & QCOMTEE_OIC_FLAG_BUSY))
>> +		ret = qcom_scm_qtee_invoke_smc(in_msg_paddr, oic->in_msg.size,
>> +					       out_msg_paddr, oic->out_msg.size,
>> +					       &res, res_type);
>> +	else
>> +		ret = qcom_scm_qtee_callback_response(out_msg_paddr,
>> +						      oic->out_msg.size,
>> +						      &res, res_type);
>> +
>> +	if (ret)
>> +		pr_err("QTEE returned with %d.\n", ret);
>> +	else
>> +		*result = (int)res;
> 
> After enablign QCOMTEE driver, I observe the following error during the
> bootup on RB3 Gen2:
> 
> [    4.720777] qcomtee: QTEE returned with -22.
> [    4.725251] qcomtee: QTEE version 0.0.0
> 
> 

We are using the RB3 Gen2, and it successfully reports 5.2.0 as the version
number. However, seeing 0.0.0 is not necessarily a problem. What TZ build
are you using?

It's possible that the service responsible for returning the version number
is not available on your device, even though the object invocation itself is
supported.

Are you able to make any object-invoke calls from userspace? A simple test -
such as running the TA diagnostics tool - can help verify this:
https://github.com/quic/quic-teec

Regards,
Amir

>> +
>> +	return ret;
>> +}
>> +
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
