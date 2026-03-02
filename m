Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDocIagZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 146214127F7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2210343F36
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:27 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id BEFA23F9BF
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:42:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=nLtkOm2A;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=F9J3m7fK;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6224vZOa1955725
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:42:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	piXcJzMeuC1GQTW+z56AL0+ix8P0FjngV+9YFbX1rVM=; b=nLtkOm2AHu9HoX1v
	oa1xnNMoezDDTz1ISvqkk7cJbAS2xyrhLYLVIWnZA80l/l2cOkEG2/KpwDkvyB8e
	jO9I8AvstnA0YOlfbm6jKlc/BfzpNQUQhO7M8CbWaa/iIZBeku+grClltUlY1Vmq
	EJ6/mh3P31+KsvQppLQFGemEp5R+T6T9EjirlueknNDz/uN5Sn4RQbIV+FM9Pxe9
	NMh2Xtqnbbox/mLdZoK/Lgp9YfcRJXJI3/0cn9RIf2b9mRwcEszcYeBDUGaFcd79
	IYruUus9C3cl6zA4w23dEUx1wOHUIpN9YKm/kH6d1tiKBMgLjt2l8AYHTe0gX2wj
	6+eHkQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfyvqhq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:42:07 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630753cc38so21623382a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440926; x=1773045726; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=piXcJzMeuC1GQTW+z56AL0+ix8P0FjngV+9YFbX1rVM=;
        b=F9J3m7fKUEekhLwJ+EMmy7Z+gcVvwpokpTLRVGMrk7ldyL+oK8oDR9P1sppyokfEtD
         hA6FuGu/mcJgiijd44guGl233zgYHHNe2Xlq4lS0XiCAjC0Mu0oIRodudPxJTcjW7HVZ
         cWzHwcjTvL3CdGPi3J73FqfRPiAW+rzDED1HshZeCcLwGYxGmkTms1dz7VGIyYKldBFF
         7VNQP5niGEU+asWNGo4p20TRqHp48HpRhq6jFnJEodIFMiS/1TgGAtj8C1uPQO5JSAiQ
         7xx1MImAKFeXwVHX2BMmDWjY9P9sDjZGGMwPUBiKXRjhv/U6812gotX6seOzgLldvcFA
         PV7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440926; x=1773045726;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=piXcJzMeuC1GQTW+z56AL0+ix8P0FjngV+9YFbX1rVM=;
        b=EZ1N2rck7rK5K2X8AztLbwSFu0utCVpi5HBNmX12105lzWUifTPOVPhz7i+5jLhR/X
         FVPkV6Fygea4Nrvs1xDJXbNdp/XT/rlD2E8MZvSbFWPA/d0orV6TLI4mKTiMGBDaX1xM
         8Moz2dXWTJd4XAQrBMnJ38ewnOgl2RtU0Cd4EiiXMKCJC+xK159qP9KEucJudHjnpiop
         1luTYCclis8hQYQ+pikG89/EZmJ8MW/wl0RffVLNsTnKSKID9viqKycSm3kDWGxJSirj
         /W5lsY9v9Kvhon2Q5RDfAfEhEYoum8mQnF9FdSkTKBmqTand0mmN0aQmJxwNL6FsW/Qk
         y82A==
X-Forwarded-Encrypted: i=1; AJvYcCX/1YhXN9iYFwz+Id1KSzDQMravtSKMIGMI4KY8tDdW5zn2/CgmvYKVPzoC90szUCnhC/K7NMd61g186zpz@lists.linaro.org
X-Gm-Message-State: AOJu0Yxmblwh43TWOCY+ReFhqM51azvteWlPG0uGIeaN4uEo0KqfBy7d
	USGSQhRLkuAanESd17zRLTG9irisW4ZmRDp+2BwSLwBiiONqH0oFEyBHAqq1JHt/gOyteAwsvy3
	/2uJH9PPnmhy9iqxGfEqaJP+5otIrJo1RessWyi7xhrAB54CAvaC63w668mRMj9FBztUhNw==
X-Gm-Gg: ATEYQzx762LG6RhpNuZuCGbUtRZxOQT3wjUE1LcjxaM+OHQ78dH3W12CGWmY3sorrMi
	oTGaO4t4XCNtcaY19gBzB2YisG8dGsaHQyMWdZlgKjodYN6YLThkQ3fJSNFqA8cf/LSLB0PXD27
	Qjsq7AbNHTC0o1ZQeOpr5rNPSWzdvunpIR3g2ynz+gRXjrFMGvw58YvTEIetTMyqUp9GIbG35Qk
	B5z4kgHCMMfgkicfs3FdGk2uxKalN4ohW3JyjAt1wklaYpFt+lPJJD12wzb91BmtDg7t4atnVos
	XPaWJclfXRTC0VavG5bWpjJYPtK3pXSfa4XbSgFuH/0MoTuxWQJIgEBPNa4SvbIv/VZcge/EVK3
	bDcEgHMdX2mKHCJTEMhYmDutTX5V4lChOqXMXHbwSrQEqGMkgEQ==
X-Received: by 2002:a05:6a00:2d09:b0:821:8492:7f73 with SMTP id d2e1a72fcca58-8274da7a78fmr12008595b3a.63.1772440926256;
        Mon, 02 Mar 2026 00:42:06 -0800 (PST)
X-Received: by 2002:a05:6a00:2d09:b0:821:8492:7f73 with SMTP id d2e1a72fcca58-8274da7a78fmr12008567b3a.63.1772440925746;
        Mon, 02 Mar 2026 00:42:05 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a01a99esm15377234b3a.47.2026.03.02.00.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:42:05 -0800 (PST)
Message-ID: <207b4008-b32e-45d0-9ebb-a32b2a5edfd1@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:11:57 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-18-fe46a9c1a046@oss.qualcomm.com>
 <zideovhb7djvsbydqmdyxbgh6cte7xc5ouhm6gsreww6klqqae@o6w6wd4tic4r>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <zideovhb7djvsbydqmdyxbgh6cte7xc5ouhm6gsreww6klqqae@o6w6wd4tic4r>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NiBTYWx0ZWRfX+4Czi3UD6qb2
 hKJlT0FQR6a3siqPvc69Rl/OWvA/5qixpmVvoFY7ai6FXX2VLAqKM23Gs79+5eaQK+6xns3m0b0
 Q48kqxv41SCZ4OLCdnKWsbqd14tFLp8uwXXyUnAgcfUSLmhfO8W/eCI8RVHt0PosfeGBD3OjglB
 wTyYjWXGM+6KN+acXQWPse4JJneelHpySGabJkO2Nj4hXHPTxhhGrul+CYJmNPX4aVwjJQquL2d
 2VGr2f93/fH+OGLBJzqQ1F0x6UIjep1rsVKxgU7vcPMsbWXThODGMN9qoW8/+mVGxItQZeSNmGH
 BBMFfDAqWi5wuO4jNar/ygQDY5ypA04ON5KSRQO9G5AgVZuUOTgOvXKe5Go3AHkBeEAE3c7OFpO
 m9JFAwme/Wur1B4eYkObUJGxGSXqn0rI64TptyGPMbZV3RPK7SgzLxUKPw3MALMCdEurVsEea/7
 EgBq7XxjmV9bV4qZCCA==
X-Authority-Analysis: v=2.4 cv=avS/yCZV c=1 sm=1 tr=0 ts=69a54d5f cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=e5mUnYsNAAAA:8 a=f53fbDee1N-zenCa03cA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: S_FbNmWfPJ7ZBQZbx3UNX0hwcCR1u21F
X-Proofpoint-ORIG-GUID: S_FbNmWfPJ7ZBQZbx3UNX0hwcCR1u21F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020076
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3Q4IZRW7LXYJLM2SQEPDMXXHZAIKJQNX
X-Message-ID-Hash: 3Q4IZRW7LXYJLM2SQEPDMXXHZAIKJQNX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:19 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 18/18] MAINTAINERS: Add MAINTAINERS entry for QDA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3Q4IZRW7LXYJLM2SQEPDMXXHZAIKJQNX/>
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
	DATE_IN_PAST(1.00)[1088];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,oss.qualcomm.com:mid,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 146214127F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 4:10 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:39:12AM +0530, Ekansh Gupta wrote:
>> Add a new MAINTAINERS entry for the Qualcomm DSP Accelerator (QDA)
>> driver. The entry lists the primary maintainer, the linux-arm-msm and
>> dri-devel mailing lists, and covers all source files under
>> drivers/accel/qda, Documentation/accel/qda and the UAPI header
>> include/uapi/drm/qda_accel.h.
>>
>> This ensures that patches to the QDA driver and its public API are
>> tracked and routed to the appropriate reviewers as the driver is
>> integrated into the DRM accel subsystem.
> Please add it in the first patch.
ack
>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  MAINTAINERS | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 71f76fddebbf..78b8b82a6370 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -21691,6 +21691,15 @@ S:	Maintained
>>  F:	Documentation/devicetree/bindings/crypto/qcom-qce.yaml
>>  F:	drivers/crypto/qce/
>>  
>> +QUALCOMM DSP ACCELERATOR (QDA) DRIVER
>> +M:	Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> +L:	linux-arm-msm@vger.kernel.org
>> +L:	dri-devel@lists.freedesktop.org
>> +S:	Supported
>> +F:	Documentation/accel/qda/
>> +F:	drivers/accel/qda/
>> +F:	include/uapi/drm/qda_accel.h
>> +
>>  QUALCOMM EMAC GIGABIT ETHERNET DRIVER
>>  M:	Timur Tabi <timur@kernel.org>
>>  L:	netdev@vger.kernel.org
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
