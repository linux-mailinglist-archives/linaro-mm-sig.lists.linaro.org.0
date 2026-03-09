Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPDrGTZe5mnmvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA62430B0F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A72B14069A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:05:30 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 665BE3F689
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 06:53:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=UsIEUek4;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=eLVMhsY2;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628LZp8c3540564
	for <linaro-mm-sig@lists.linaro.org>; Mon, 9 Mar 2026 06:53:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mVgFqX2DBPDBaFLa3PVw54gA+GcENZGtutXAv5LndUk=; b=UsIEUek4Fe3f4Aqn
	fxQRIA/Kk6hOUiaqGNLJsR2oFJYcB3CDNQlg/Hb46GLjLpfJngErRAaLpqsnRq/4
	FSNYnFEIsCGfpt6WEzzUinND8smSGzsVEC+gj9sxjAtZSU2Li1gZCTJPT0weTD7w
	7BzN5yu3jPZ9FUkyo0Pb1cCM2yTwpmGzzZ5Klv6LBzCxJwELQM+Ttm3Abc0ogiV7
	JytN8LDB7w9uVRnVv5ARinNUO3H5lEPndqIQ9KgWMLFs8HnK51AN/be03hiQ+uS4
	V9OqsfmOJpvRXgd0UgEc4ziMwn9c2ZJWHV5jD55sisvRHFWv09Gv1SbonyLYpkl/
	YZDBfQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crayrmbw9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 06:53:35 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-829a535ad7fso7634654b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 08 Mar 2026 23:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039214; x=1773644014; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mVgFqX2DBPDBaFLa3PVw54gA+GcENZGtutXAv5LndUk=;
        b=eLVMhsY2QvOZERQOoIwD/xNmCGjGs3WcY4WyJgWP0iwOYvsuS+NAVytVCfeoaZe+BS
         TwKLySTyBqfBf/ZfV7ck4rkmF/QJ7BLavpvl/dzUCgQw6Rp0lAvyOGcPcWlkpfT6toEf
         WPl73AzxEJbKiAaLQgKGf9fdgoIqbZoXy0Dje3LdJjy21eoOBtXdHx0G6hce3mkwheIO
         BRa9J5YLVgGKhSUQzeEKpcnQ1gkMmY1CDlFGgaSnnDqOvtWedX3NimIXYGpr43U8wNjp
         OiRKB4ctvbOwQg68qp5pogyTdYaBEVdndlEwaaWSMoKb3rsijuSu+hQM2Bwi5BfhQc6H
         6I7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039214; x=1773644014;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mVgFqX2DBPDBaFLa3PVw54gA+GcENZGtutXAv5LndUk=;
        b=aN7RJ0plQQNfu9gSiv9mH8zun3FMHD8tvuISOgiO1hn2SkTJFuzC1lMGmeYkkA93fN
         gtdze7qKk4DVB5C+3gNJ+DHk1M1t5hU8ZI7Ql/t8eC8MwPKFIHnyID+FIXfFhdq2L2ZP
         xbwD1Q1mRkflZJsBQrn2kG3GWWSF/ixGPxpt7b+W6rLJecdoUsxA3KExYyJ/pp4Qv1zN
         eiuXHLs+HjKeR8kOZGT3q0kIF+V3SEYbap+mP4qqYlDU6nwAvlOLSzLFNZqvSIi1LXjH
         ZqjowNLFzxujSYxDN9Vzkop6wO4YxlWNJWIFaKyxEjLyTwTLkyXZ/kSFfCET+eodvRHv
         Xvug==
X-Forwarded-Encrypted: i=1; AJvYcCXeFTLSXTMKfJCVGBpASzsPDgqsVHC+YU1L2499uHxjQ+aFOGXb9NihHrVA6Wje/4o9ykQ96utNYyQHumGj@lists.linaro.org
X-Gm-Message-State: AOJu0YxbY5b0ZU57nrXPNT79EX/pMZLOBQr/VRAZpPbR6uUwLsUAIzS2
	6DLJ5cRcp9SdPQH/PCYxZtV7VUx9EhthCCdstvGyW4Uuu53SdkcmajfvVKrJlAcZdyJfpgMxpxH
	R3u6WNSOzLspj2a6cZdg3DVPtZ8oL1M4Hq6GHl+pup3lKWvroPy7v/48cvsUY/cPeVEHwDQ==
X-Gm-Gg: ATEYQzzfHttfrOI0MOUIBEmDAjzyabk1UAcejY/Je+S88ZFO41+3f4Isav+O/ufv0Jr
	xs2eOWlCPMnDzjeg5d0fUa74kctuj3XnJQUw/ZWncMk5rxnyrlSTCHrkpDNqbUZviD+Vc9qlKRI
	ssozTb5/i1pO6QMhJ58zNKj/+S+YTKVvym2HbBFqCUkZzJZN4aPX5vcTbiBcC3xlb41R5uPifg9
	Y3ql4A2zEg+sp7DSSzwHBFJk1Qzzm3rZ/KO2RW0iiAuRAQV/dudCNOYLwiNZK8kF3URFl132j4K
	XDbkNU7hRp1Pbrb5UugDugtMwbFNhQ9tl4yEa252zctcFoovMGkQvmL+pamk+3cG/rTVma6Ekwg
	L/o3QnXJcWOor10npBAG8newdNwS0PPyfS1qtXjlqdoS/rzdjjQ==
X-Received: by 2002:a05:6a00:1805:b0:829:7692:cddc with SMTP id d2e1a72fcca58-829a2e5a4b2mr10500536b3a.21.1773039214497;
        Sun, 08 Mar 2026 23:53:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:1805:b0:829:7692:cddc with SMTP id d2e1a72fcca58-829a2e5a4b2mr10500515b3a.21.1773039214023;
        Sun, 08 Mar 2026 23:53:34 -0700 (PDT)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48a54cesm9002319b3a.48.2026.03.08.23.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 23:53:33 -0700 (PDT)
Message-ID: <b4751c57-8ed2-4bed-8c0f-34f0a2e54345@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 12:23:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-14-fe46a9c1a046@oss.qualcomm.com>
 <57we5xzyxvctwzgggqpemlqf7q524mbaqnczqxua6eaehqv6vw@bq4raxwkbava>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <57we5xzyxvctwzgggqpemlqf7q524mbaqnczqxua6eaehqv6vw@bq4raxwkbava>
X-Authority-Analysis: v=2.4 cv=U5qfzOru c=1 sm=1 tr=0 ts=69ae6e6f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=m5BqE4nBN3PhNdyHHPEA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: YawDN3SSTnB22J7NZRzX0TrR17ifKb26
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MiBTYWx0ZWRfX6mwQwpUmTkNs
 wq6sl64DKJBPAo8Jr3ePFh8GPWUh80VXOaJ89VOo8ZmZkR/1+1gHuORo6OLUYG9n8fThpky6AMR
 dXQrXKajHrBXiJYHacnMabrMTaoo3j7zVpi5kUOUgEyJU1rOWfhzwGQA7NDmL6KkzUDTZj9RYGR
 zRQbEynFo2EVc1BH8E4Te089iJV7YuZ+haC1LkNBkoq9eIkesx02y9GumrgtlmYpDNjHhykP44p
 jCoQTcuJGzvcAjyWtOk2g+3UeXz4siG5BnCmZWkp5KpEHGSq668pSppXvDemhPqgETsYFiK+IPl
 DA6AjeDmmj77gSoUnRdj32RyiDEJG3gzrVIT3yAi9CiFcaeNw5Mghix2S+Vlf4EF7Rhk8TFl2Qt
 /Wz3g9wITZvK/ri4LjHL4uZwlX16as77CzwdPg5ASkaKGUqEGTst7aR+UIiBNArV4H0vE+uC1SA
 9dUsqiGsUcZbnyHT1Xg==
X-Proofpoint-GUID: YawDN3SSTnB22J7NZRzX0TrR17ifKb26
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090062
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ELQGQXMPFRPKZHE7CLRDCN6DVARQ6MXN
X-Message-ID-Hash: ELQGQXMPFRPKZHE7CLRDCN6DVARQ6MXN
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:12 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 14/18] accel/qda: Add FastRPC dynamic invocation support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ELQGQXMPFRPKZHE7CLRDCN6DVARQ6MXN/>
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
	DATE_IN_PAST(1.00)[1018];
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
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,inv.sc:url]
X-Rspamd-Queue-Id: DFA62430B0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 4:40 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:39:08AM +0530, Ekansh Gupta wrote:
>> Extend the QDA FastRPC implementation to support dynamic remote
>> procedure calls from userspace. A new DRM_QDA_INVOKE ioctl is added,
>> which accepts a qda_invoke_args structure containing a remote handle,
>> FastRPC scalars value and a pointer to an array of fastrpc_invoke_args
>> describing the individual arguments. The driver copies the scalar and
>> argument array into a fastrpc_invoke_context and reuses the existing
>> buffer overlap and packing logic to build a GEM-backed message buffer
>> for transport.
>>
>> The FastRPC core gains a FASTRPC_RMID_INVOKE_DYNAMIC method type and a
>> fastrpc_prepare_args_invoke() helper that reads the qda_invoke_args
>> header and argument descriptors from user or kernel memory using a
>> copy_from_user_or_kernel() helper. The generic fastrpc_prepare_args()
>> path is updated to handle the dynamic method alongside the existing
>> INIT_ATTACH and INIT_RELEASE control calls, deriving the number of
>> buffers and scalars from the provided FastRPC scalars encoding.
>>
>> On the transport side qda_ioctl_invoke() simply forwards the request
>> to fastrpc_invoke() with the dynamic method id, allowing the RPMsg
>> transport and context lookup to treat dynamic calls in the same way as
>> the existing control methods. This patch establishes the basic FastRPC
>> invoke mechanism on top of the QDA GEM and RPMsg infrastructure so
>> that future patches can wire up more complex DSP APIs.
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/qda_drv.c     |  1 +
>>  drivers/accel/qda/qda_fastrpc.c | 48 +++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_fastrpc.h |  1 +
>>  drivers/accel/qda/qda_ioctl.c   |  5 +++++
>>  drivers/accel/qda/qda_ioctl.h   | 13 +++++++++++
>>  include/uapi/drm/qda_accel.h    | 21 ++++++++++++++++++
>>  6 files changed, 89 insertions(+)
>>
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> index 3034ea660924..f94f780ea50a 100644
>> --- a/drivers/accel/qda/qda_drv.c
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -162,6 +162,7 @@ static const struct drm_ioctl_desc qda_ioctls[] = {
>>  	DRM_IOCTL_DEF_DRV(QDA_GEM_CREATE, qda_ioctl_gem_create, 0),
>>  	DRM_IOCTL_DEF_DRV(QDA_GEM_MMAP_OFFSET, qda_ioctl_gem_mmap_offset, 0),
>>  	DRM_IOCTL_DEF_DRV(QDA_INIT_ATTACH, qda_ioctl_attach, 0),
>> +	DRM_IOCTL_DEF_DRV(QDA_INVOKE, qda_ioctl_invoke, 0),
>>  };
>>  
>>  static struct drm_driver qda_drm_driver = {
>> diff --git a/drivers/accel/qda/qda_fastrpc.c b/drivers/accel/qda/qda_fastrpc.c
>> index eda7c90070ee..a48b255ffb1b 100644
>> --- a/drivers/accel/qda/qda_fastrpc.c
>> +++ b/drivers/accel/qda/qda_fastrpc.c
>> @@ -12,6 +12,16 @@
>>  #include "qda_gem.h"
>>  #include "qda_memory_manager.h"
>>  
>> +static int copy_from_user_or_kernel(void *dst, const void __user *src, size_t size)
>> +{
>> +	if ((unsigned long)src >= PAGE_OFFSET) {
>> +		memcpy(dst, src, size);
>> +		return 0;
>> +	} else {
>> +		return copy_from_user(dst, src, size) ? -EFAULT : 0;
>> +	}
> Nah, it's a direct route to failure. __user is for user pointers, it
> can't be a kernel data. Define separate functions and be 100% sure
> whether the data is coming from the user (and thus needs to be
> sanitized) or of it is coming from the kernel. Otherwise a funny user
> can pass kernel pointer and get away with your code copying data from or
> writing data to the kernel buffer.
I see, I get your comment on the other patch also, I'll fix this.
>
>> +}
>> +
>>  static int copy_to_user_or_kernel(void __user *dst, const void *src, size_t size)
>>  {
>>  	if ((unsigned long)dst >= PAGE_OFFSET) {
>> @@ -509,6 +519,41 @@ static int fastrpc_prepare_args_release_process(struct fastrpc_invoke_context *c
>>  	return 0;
>>  }
>>  
>> +static int fastrpc_prepare_args_invoke(struct fastrpc_invoke_context *ctx, char __user *argp)
>> +{
>> +	struct fastrpc_invoke_args *args = NULL;
>> +	struct qda_invoke_args inv;
>> +	int err = 0;
>> +	int nscalars;
>> +
>> +	if (!argp)
>> +		return -EINVAL;
>> +
>> +	err = copy_from_user_or_kernel(&inv, argp, sizeof(inv));
>> +	if (err)
>> +		return err;
>> +
>> +	nscalars = REMOTE_SCALARS_LENGTH(inv.sc);
>> +
>> +	if (nscalars) {
>> +		args = kcalloc(nscalars, sizeof(*args), GFP_KERNEL);
>> +		if (!args)
>> +			return -ENOMEM;
>> +
>> +		err = copy_from_user_or_kernel(args, (const void __user *)(uintptr_t)inv.args,
>> +					       nscalars * sizeof(*args));
> So... You are allowing users to specify the address in the kernel
> address space? Are you... sure?
ack, I'll fix this
>
>> +		if (err) {
>> +			kfree(args);
>> +			return err;
>> +		}
>> +	}
>> +	ctx->sc = inv.sc;
>> +	ctx->args = args;
>> +	ctx->handle = inv.handle;
>> +
>> +	return 0;
>> +}
>> +
>>  int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
>>  {
>>  	int err;
>> @@ -521,6 +566,9 @@ int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
>>  	case FASTRPC_RMID_INIT_RELEASE:
>>  		err = fastrpc_prepare_args_release_process(ctx);
>>  		break;
>> +	case FASTRPC_RMID_INVOKE_DYNAMIC:
>> +		err = fastrpc_prepare_args_invoke(ctx, argp);
>> +		break;
>>  	default:
>>  		return -EINVAL;
>>  	}
>> diff --git a/drivers/accel/qda/qda_fastrpc.h b/drivers/accel/qda/qda_fastrpc.h
>> index 744421382079..bcadf9437a36 100644
>> --- a/drivers/accel/qda/qda_fastrpc.h
>> +++ b/drivers/accel/qda/qda_fastrpc.h
>> @@ -237,6 +237,7 @@ struct fastrpc_invoke_context {
>>  /* Remote Method ID table - identifies initialization and control operations */
>>  #define FASTRPC_RMID_INIT_ATTACH	0	/* Attach to DSP session */
>>  #define FASTRPC_RMID_INIT_RELEASE	1	/* Release DSP session */
>> +#define FASTRPC_RMID_INVOKE_DYNAMIC	0xFFFFFFFF	/* Dynamic method invocation */
>>  
>>  /* Common handle for initialization operations */
>>  #define FASTRPC_INIT_HANDLE		0x1
>> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
>> index 1066ab6ddc7b..e90aceabd30d 100644
>> --- a/drivers/accel/qda/qda_ioctl.c
>> +++ b/drivers/accel/qda/qda_ioctl.c
>> @@ -192,3 +192,8 @@ int fastrpc_release_current_dsp_process(struct qda_dev *qdev, struct drm_file *f
>>  {
>>  	return fastrpc_invoke(FASTRPC_RMID_INIT_RELEASE, qdev->drm_dev, NULL, file_priv);
>>  }
>> +
>> +int qda_ioctl_invoke(struct drm_device *dev, void *data, struct drm_file *file_priv)
>> +{
>> +	return fastrpc_invoke(FASTRPC_RMID_INVOKE_DYNAMIC, dev, data, file_priv);
>> +}
>> diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
>> index 044c616a51c6..e186c5183171 100644
>> --- a/drivers/accel/qda/qda_ioctl.h
>> +++ b/drivers/accel/qda/qda_ioctl.h
>> @@ -63,4 +63,17 @@ int qda_ioctl_attach(struct drm_device *dev, void *data, struct drm_file *file_p
>>   */
>>  int fastrpc_release_current_dsp_process(struct qda_dev *qdev, struct drm_file *file_priv);
>>  
>> +/**
>> + * qda_ioctl_invoke - Invoke a remote procedure on the DSP
>> + * @dev: DRM device structure
>> + * @data: User-space data containing invocation parameters
>> + * @file_priv: DRM file private data
>> + *
>> + * This IOCTL handler initiates a remote procedure call on the DSP,
>> + * marshalling arguments, executing the call, and returning results.
>> + *
>> + * Return: 0 on success, negative error code on failure
>> + */
>> +int qda_ioctl_invoke(struct drm_device *dev, void *data, struct drm_file *file_priv);
>> +
>>  #endif /* _QDA_IOCTL_H */
>> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
>> index 4d3666c5b998..01072a9d0a91 100644
>> --- a/include/uapi/drm/qda_accel.h
>> +++ b/include/uapi/drm/qda_accel.h
>> @@ -22,6 +22,9 @@ extern "C" {
>>  #define DRM_QDA_GEM_CREATE		0x01
>>  #define DRM_QDA_GEM_MMAP_OFFSET	0x02
>>  #define DRM_QDA_INIT_ATTACH		0x03
>> +/* Indexes 0x04 to 0x06 are reserved for other requests */
>> +#define DRM_QDA_INVOKE			0x07
>> +
>>  /*
>>   * QDA IOCTL definitions
>>   *
>> @@ -35,6 +38,8 @@ extern "C" {
>>  #define DRM_IOCTL_QDA_GEM_MMAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_MMAP_OFFSET, \
>>  						 struct drm_qda_gem_mmap_offset)
>>  #define DRM_IOCTL_QDA_INIT_ATTACH	DRM_IO(DRM_COMMAND_BASE + DRM_QDA_INIT_ATTACH)
>> +#define DRM_IOCTL_QDA_INVOKE		DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_INVOKE, \
>> +						 struct qda_invoke_args)
>>  
>>  /**
>>   * struct drm_qda_query - Device information query structure
>> @@ -95,6 +100,22 @@ struct fastrpc_invoke_args {
>>  	__u32 attr;
>>  };
>>  
>> +/**
>> + * struct qda_invoke_args - User-space IOCTL arguments for invoking a function
>> + * @handle: Handle identifying the remote function to invoke
>> + * @sc: Scalars parameter encoding buffer counts and attributes
> Encoding... how?
I can add more details for this over here or over FASTRPC_BUILD_SCALARS definition.
>
>> + * @args: User-space pointer to the argument array
> Which is defined at...?
>
>
> Can you actually write the user code by looking at your uapi header?
will add more details for this.
>
>> + *
>> + * This structure is passed from user-space to invoke a remote function
>> + * on the DSP. The scalars parameter encodes the number and types of
>> + * input/output buffers.
>> + */
>> +struct qda_invoke_args {
>> +	__u32 handle;
>> +	__u32 sc;
>> +	__u64 args;
>> +};
>> +
>>  #if defined(__cplusplus)
>>  }
>>  #endif
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
