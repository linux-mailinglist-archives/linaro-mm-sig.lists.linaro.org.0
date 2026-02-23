Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBzoCxwU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D7841216A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C28424506C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:46 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 357853F7DF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 23:11:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RBXLf8Bi;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="YY/LS8ub";
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NHh3an322187
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 23:10:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lRbhlI+X+C8SmlSdJaBzOExh
	KR0OP/6AiGSM8L0TCJc=; b=RBXLf8BiegXOkwPWtRQtYtFfyJL0qhEWs0+qc8Ho
	lKN8iHF1+NSMTDLibV+MzhQakKa8rdbj4QhiPBEmIMROjSxAdg1XXXUZSSzrIJkr
	UdMrE/uhwR7ZR3igzg1Dx5IMolK0jXdR4a2WNHo4wzP0mGEGAquUCev4V98a85n1
	1emQXUWMOSE4bdTsdE3UooCiyJnSlcFLv73nLZ7CBtQrQes04NnWlWstwELTYOoC
	j0bkyDlleB3TdsVrrcF+qi0tguBcCJ2V+CU1ta6f7Myx9eb56Wg6vKDSXGO2VnWr
	nOnhXQxbw0hlPe/Dct0K42W5mqmAvoFzn2zRusRosOzgzQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y26d7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 23:10:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ed6c849so4272709785a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 15:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771888259; x=1772493059; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lRbhlI+X+C8SmlSdJaBzOExhKR0OP/6AiGSM8L0TCJc=;
        b=YY/LS8ubH2usn6LYiG7fr514u8I5Zak7+/8zsxuoOdOzYkDAbIGFIYSvti34kpN5tj
         OOSXDUSJcTtZQ7IiB/sySoG+tl6vTOTsqhYAjf0K85SNkrWqiGjdS4st8LD06A9+Nwbg
         VC42JR81I0ypPrgNmKbglP8e8xaq+CH5R2V5szsQBpJ02Wleb8t+X1MFVZ9vhZTz8BMK
         BNjqCWoSFzN77Mya7+ZAnkXZRl9bZMELBWmd7J/moUhYt13rmR8Z3YJv/gR4pbX0hgBy
         8mSIfFtZi7CdHh4FTHmd1V97c9bwc7A4pzdCo2S9OUh1fcYOgn25FT6J0wNQ/mhiUhh3
         NzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771888259; x=1772493059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lRbhlI+X+C8SmlSdJaBzOExhKR0OP/6AiGSM8L0TCJc=;
        b=NgmDaCSItXoAQWyVjSCCdksleohR8xKcY4TazGQCJ5svCWBe9th+6yqv4TgFs7IxHv
         5wzCLCZ9XDEJUSOqavTYQ+xiMjoIPZZugIh9w/PA46dNK1FZDAnuZcNP6/If6EoYdxIO
         SaavVuyiJzhKALLh17VzC9wDGmalR0/iwNGub4onBp2DO5OINo2cAmTijfhwftFzRdtv
         nm2IO3VNBFXSjPgvi0Gz+ELKB0EJTp6zdmuGMgWbAsA5D5uBqCxhD0FX0c2Uz1pnGsIj
         btxGi1elNDxPCtB6k2Fniew4TU7lQKhBOsLScfcyUAN8wjq50g7/rNdGHHq63BNnPNBy
         Gjpg==
X-Forwarded-Encrypted: i=1; AJvYcCUqm5P60c9z4pjAJ2TdQJqaZm+W1XvL1yEaiCCQwIJG31EN7kpjG2W46YGLOvVjLvS3kloesWQzcNiUiC2r@lists.linaro.org
X-Gm-Message-State: AOJu0YxBUM+UAzDEjztQTm2q5sTuU+NaHfkG2TRYLf4wzoXtDNGEpIQV
	ZFoHYE3BkJi74QMjkuO0X4nwt2d9SbkiXZ83TbED1fJw8RgXmaRO5F7QSfPr0qhMgqt6A01NmId
	JATUDOwnoMMzQiqTTjdtVlqetlt0XHUlFk/puuUVFvDUXiITzIZjQLXwvAZcFtFU5AxhC4w==
X-Gm-Gg: AZuq6aLfRc6JZYFKnn6ggBr8oafBsJOpOzrJDZTE7UtXMykvfdOCU/Q0cgK1/zbHj9I
	LsgS2l3zRl/PAK+X8Vp1DV2ryeW1+L8KXba6c+gZ3mUSlR5sGjfhFTzH0uQQLeIiMKln1hvnXnT
	u9fWp9VKU2Oy4tCIdOFdMfGqTfSAq1sJ8jutp4Ch6PNKLJrQ1dNK+9tBVYlWWA0TIXxExlFU2d8
	q2jnR4SoShZgBbP9Xc0VtE2RGgxBXhXio14FCqj2Ck2ErHsI+2G4j2m80TNTA+75tE/1ktkxA/K
	UjZADKpN48nCmuQFCkSoOa+TeqdREzimeVd3NTHNdjJdwLlBqWjz/WWOkEMr18DSRm2vFhhsPF+
	qCKzFMY9TzjacjiVjgovqEHaKuHeIw9YakzIThSRGq2L5GxByxxzY5mNfowb16ZuIT314MNSkVy
	BxDbHP56dlfcgtcGicKHDjIa9lQJZb2EUVLY0=
X-Received: by 2002:a05:620a:f04:b0:8cb:3a1d:79fa with SMTP id af79cd13be357-8cb8ca76abemr1403755285a.58.1771888258859;
        Mon, 23 Feb 2026 15:10:58 -0800 (PST)
X-Received: by 2002:a05:620a:f04:b0:8cb:3a1d:79fa with SMTP id af79cd13be357-8cb8ca76abemr1403750985a.58.1771888258310;
        Mon, 23 Feb 2026 15:10:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb4760csm1835383e87.77.2026.02.23.15.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 15:10:57 -0800 (PST)
Date: Tue, 24 Feb 2026 01:10:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <57we5xzyxvctwzgggqpemlqf7q524mbaqnczqxua6eaehqv6vw@bq4raxwkbava>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-14-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-14-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDIwMiBTYWx0ZWRfX3U34O+/s1uTb
 I3zTVwvLBSPIA7pQ4qxXcmkvDLttEG2PjN48GmzmG7NGDuUQp446TeGrwJc+QNmYrls7ZA9+Qh3
 xX13h63W++EEgEgaJdlXBQ9OnW/v+B7xcOkYJ8kAxLqqOKCkk0qm69ZYt7HlvPvrmeUego/qwmw
 lDJh0oXWWFdilwJZig9hbFTFcczzkfqGPKuV11pQuWrQ05vgM0WnR8QRs7Io+cAAAJYO0nZ+xXy
 8WuMVsZcKNYbgDrbGOVAQpXnEA9SJBFW3q/qISt7cdoNRvjrWxRKkIjEa6FE8PYSyf6lQ2Zx2/Q
 m4zmzEkjPnPkTV+yzyoZFEetFqkr+LKLbfLEBk2XxiPvEUkwsIj9tOgB6vfOIQTY8tBS6alMtNw
 fcVzsdf+iX3OZcK4O8uTNZ4cJ3vRVj1JkxddheWrbC618yZldi+IMr2tuZDMNvRAblL+HuTvART
 Vh4HaN8MVtbUo8v1JFQ==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699cde83 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=nKshNOZNSeXGH1bP4e4A:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Y7B98IjbfRDj_xXjb15KCzA05GyBw0Pb
X-Proofpoint-ORIG-GUID: Y7B98IjbfRDj_xXjb15KCzA05GyBw0Pb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230202
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2WH5OIDRTFXT2H6VNL3WJTBT2QOG4KJS
X-Message-ID-Hash: 2WH5OIDRTFXT2H6VNL3WJTBT2QOG4KJS
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:57 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 14/18] accel/qda: Add FastRPC dynamic invocation support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2WH5OIDRTFXT2H6VNL3WJTBT2QOG4KJS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1241];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: A3D7841216A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:39:08AM +0530, Ekansh Gupta wrote:
> Extend the QDA FastRPC implementation to support dynamic remote
> procedure calls from userspace. A new DRM_QDA_INVOKE ioctl is added,
> which accepts a qda_invoke_args structure containing a remote handle,
> FastRPC scalars value and a pointer to an array of fastrpc_invoke_args
> describing the individual arguments. The driver copies the scalar and
> argument array into a fastrpc_invoke_context and reuses the existing
> buffer overlap and packing logic to build a GEM-backed message buffer
> for transport.
> 
> The FastRPC core gains a FASTRPC_RMID_INVOKE_DYNAMIC method type and a
> fastrpc_prepare_args_invoke() helper that reads the qda_invoke_args
> header and argument descriptors from user or kernel memory using a
> copy_from_user_or_kernel() helper. The generic fastrpc_prepare_args()
> path is updated to handle the dynamic method alongside the existing
> INIT_ATTACH and INIT_RELEASE control calls, deriving the number of
> buffers and scalars from the provided FastRPC scalars encoding.
> 
> On the transport side qda_ioctl_invoke() simply forwards the request
> to fastrpc_invoke() with the dynamic method id, allowing the RPMsg
> transport and context lookup to treat dynamic calls in the same way as
> the existing control methods. This patch establishes the basic FastRPC
> invoke mechanism on top of the QDA GEM and RPMsg infrastructure so
> that future patches can wire up more complex DSP APIs.
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/qda_drv.c     |  1 +
>  drivers/accel/qda/qda_fastrpc.c | 48 +++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_fastrpc.h |  1 +
>  drivers/accel/qda/qda_ioctl.c   |  5 +++++
>  drivers/accel/qda/qda_ioctl.h   | 13 +++++++++++
>  include/uapi/drm/qda_accel.h    | 21 ++++++++++++++++++
>  6 files changed, 89 insertions(+)
> 
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index 3034ea660924..f94f780ea50a 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -162,6 +162,7 @@ static const struct drm_ioctl_desc qda_ioctls[] = {
>  	DRM_IOCTL_DEF_DRV(QDA_GEM_CREATE, qda_ioctl_gem_create, 0),
>  	DRM_IOCTL_DEF_DRV(QDA_GEM_MMAP_OFFSET, qda_ioctl_gem_mmap_offset, 0),
>  	DRM_IOCTL_DEF_DRV(QDA_INIT_ATTACH, qda_ioctl_attach, 0),
> +	DRM_IOCTL_DEF_DRV(QDA_INVOKE, qda_ioctl_invoke, 0),
>  };
>  
>  static struct drm_driver qda_drm_driver = {
> diff --git a/drivers/accel/qda/qda_fastrpc.c b/drivers/accel/qda/qda_fastrpc.c
> index eda7c90070ee..a48b255ffb1b 100644
> --- a/drivers/accel/qda/qda_fastrpc.c
> +++ b/drivers/accel/qda/qda_fastrpc.c
> @@ -12,6 +12,16 @@
>  #include "qda_gem.h"
>  #include "qda_memory_manager.h"
>  
> +static int copy_from_user_or_kernel(void *dst, const void __user *src, size_t size)
> +{
> +	if ((unsigned long)src >= PAGE_OFFSET) {
> +		memcpy(dst, src, size);
> +		return 0;
> +	} else {
> +		return copy_from_user(dst, src, size) ? -EFAULT : 0;
> +	}

Nah, it's a direct route to failure. __user is for user pointers, it
can't be a kernel data. Define separate functions and be 100% sure
whether the data is coming from the user (and thus needs to be
sanitized) or of it is coming from the kernel. Otherwise a funny user
can pass kernel pointer and get away with your code copying data from or
writing data to the kernel buffer.

> +}
> +
>  static int copy_to_user_or_kernel(void __user *dst, const void *src, size_t size)
>  {
>  	if ((unsigned long)dst >= PAGE_OFFSET) {
> @@ -509,6 +519,41 @@ static int fastrpc_prepare_args_release_process(struct fastrpc_invoke_context *c
>  	return 0;
>  }
>  
> +static int fastrpc_prepare_args_invoke(struct fastrpc_invoke_context *ctx, char __user *argp)
> +{
> +	struct fastrpc_invoke_args *args = NULL;
> +	struct qda_invoke_args inv;
> +	int err = 0;
> +	int nscalars;
> +
> +	if (!argp)
> +		return -EINVAL;
> +
> +	err = copy_from_user_or_kernel(&inv, argp, sizeof(inv));
> +	if (err)
> +		return err;
> +
> +	nscalars = REMOTE_SCALARS_LENGTH(inv.sc);
> +
> +	if (nscalars) {
> +		args = kcalloc(nscalars, sizeof(*args), GFP_KERNEL);
> +		if (!args)
> +			return -ENOMEM;
> +
> +		err = copy_from_user_or_kernel(args, (const void __user *)(uintptr_t)inv.args,
> +					       nscalars * sizeof(*args));

So... You are allowing users to specify the address in the kernel
address space? Are you... sure?

> +		if (err) {
> +			kfree(args);
> +			return err;
> +		}
> +	}
> +	ctx->sc = inv.sc;
> +	ctx->args = args;
> +	ctx->handle = inv.handle;
> +
> +	return 0;
> +}
> +
>  int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
>  {
>  	int err;
> @@ -521,6 +566,9 @@ int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
>  	case FASTRPC_RMID_INIT_RELEASE:
>  		err = fastrpc_prepare_args_release_process(ctx);
>  		break;
> +	case FASTRPC_RMID_INVOKE_DYNAMIC:
> +		err = fastrpc_prepare_args_invoke(ctx, argp);
> +		break;
>  	default:
>  		return -EINVAL;
>  	}
> diff --git a/drivers/accel/qda/qda_fastrpc.h b/drivers/accel/qda/qda_fastrpc.h
> index 744421382079..bcadf9437a36 100644
> --- a/drivers/accel/qda/qda_fastrpc.h
> +++ b/drivers/accel/qda/qda_fastrpc.h
> @@ -237,6 +237,7 @@ struct fastrpc_invoke_context {
>  /* Remote Method ID table - identifies initialization and control operations */
>  #define FASTRPC_RMID_INIT_ATTACH	0	/* Attach to DSP session */
>  #define FASTRPC_RMID_INIT_RELEASE	1	/* Release DSP session */
> +#define FASTRPC_RMID_INVOKE_DYNAMIC	0xFFFFFFFF	/* Dynamic method invocation */
>  
>  /* Common handle for initialization operations */
>  #define FASTRPC_INIT_HANDLE		0x1
> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
> index 1066ab6ddc7b..e90aceabd30d 100644
> --- a/drivers/accel/qda/qda_ioctl.c
> +++ b/drivers/accel/qda/qda_ioctl.c
> @@ -192,3 +192,8 @@ int fastrpc_release_current_dsp_process(struct qda_dev *qdev, struct drm_file *f
>  {
>  	return fastrpc_invoke(FASTRPC_RMID_INIT_RELEASE, qdev->drm_dev, NULL, file_priv);
>  }
> +
> +int qda_ioctl_invoke(struct drm_device *dev, void *data, struct drm_file *file_priv)
> +{
> +	return fastrpc_invoke(FASTRPC_RMID_INVOKE_DYNAMIC, dev, data, file_priv);
> +}
> diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
> index 044c616a51c6..e186c5183171 100644
> --- a/drivers/accel/qda/qda_ioctl.h
> +++ b/drivers/accel/qda/qda_ioctl.h
> @@ -63,4 +63,17 @@ int qda_ioctl_attach(struct drm_device *dev, void *data, struct drm_file *file_p
>   */
>  int fastrpc_release_current_dsp_process(struct qda_dev *qdev, struct drm_file *file_priv);
>  
> +/**
> + * qda_ioctl_invoke - Invoke a remote procedure on the DSP
> + * @dev: DRM device structure
> + * @data: User-space data containing invocation parameters
> + * @file_priv: DRM file private data
> + *
> + * This IOCTL handler initiates a remote procedure call on the DSP,
> + * marshalling arguments, executing the call, and returning results.
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int qda_ioctl_invoke(struct drm_device *dev, void *data, struct drm_file *file_priv);
> +
>  #endif /* _QDA_IOCTL_H */
> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
> index 4d3666c5b998..01072a9d0a91 100644
> --- a/include/uapi/drm/qda_accel.h
> +++ b/include/uapi/drm/qda_accel.h
> @@ -22,6 +22,9 @@ extern "C" {
>  #define DRM_QDA_GEM_CREATE		0x01
>  #define DRM_QDA_GEM_MMAP_OFFSET	0x02
>  #define DRM_QDA_INIT_ATTACH		0x03
> +/* Indexes 0x04 to 0x06 are reserved for other requests */
> +#define DRM_QDA_INVOKE			0x07
> +
>  /*
>   * QDA IOCTL definitions
>   *
> @@ -35,6 +38,8 @@ extern "C" {
>  #define DRM_IOCTL_QDA_GEM_MMAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_MMAP_OFFSET, \
>  						 struct drm_qda_gem_mmap_offset)
>  #define DRM_IOCTL_QDA_INIT_ATTACH	DRM_IO(DRM_COMMAND_BASE + DRM_QDA_INIT_ATTACH)
> +#define DRM_IOCTL_QDA_INVOKE		DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_INVOKE, \
> +						 struct qda_invoke_args)
>  
>  /**
>   * struct drm_qda_query - Device information query structure
> @@ -95,6 +100,22 @@ struct fastrpc_invoke_args {
>  	__u32 attr;
>  };
>  
> +/**
> + * struct qda_invoke_args - User-space IOCTL arguments for invoking a function
> + * @handle: Handle identifying the remote function to invoke
> + * @sc: Scalars parameter encoding buffer counts and attributes

Encoding... how?

> + * @args: User-space pointer to the argument array

Which is defined at...?


Can you actually write the user code by looking at your uapi header?

> + *
> + * This structure is passed from user-space to invoke a remote function
> + * on the DSP. The scalars parameter encodes the number and types of
> + * input/output buffers.
> + */
> +struct qda_invoke_args {
> +	__u32 handle;
> +	__u32 sc;
> +	__u64 args;
> +};
> +
>  #if defined(__cplusplus)
>  }
>  #endif
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
