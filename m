Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D23AD6299
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Jun 2025 00:41:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B484451FB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jun 2025 22:41:03 +0000 (UTC)
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	by lists.linaro.org (Postfix) with ESMTPS id 4DE3E44192
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Jun 2025 22:40:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=ZNtAdT5q;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.23.234 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55BMeZ482743681;
	Wed, 11 Jun 2025 17:40:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1749681635;
	bh=3ScxWKcILfYH0VS/UgTIF+jQeDfTkbMiB6a5wGY1/a8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=ZNtAdT5qT05X/zaXIfzUes9m+pF2G5opXg7GQwjXVpOUyQ/toDs3hVTzrYl3Y39rU
	 vq19vAvQHD1nijThP5FXt4F1YP1gPrA/w6El2jRWYSukeplnPguQUkeojqHk2e9mJt
	 dtdbjbdU5OCcAwwfTYwxLLb4ct1jhNcIhs75+Qmo=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55BMeZlV1457760
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 11 Jun 2025 17:40:35 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Wed, 11
 Jun 2025 17:40:35 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 11 Jun 2025 17:40:35 -0500
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55BMeYtX1182750;
	Wed, 11 Jun 2025 17:40:34 -0500
Message-ID: <f686130b-009f-4feb-bae1-022938c85923@ti.com>
Date: Wed, 11 Jun 2025 17:40:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>,
        Jens Wiklander
	<jens.wiklander@linaro.org>,
        Sumit Garg <sumit.garg@kernel.org>,
        Bjorn
 Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Apurupa Pattapu
	<quic_apurupa@quicinc.com>,
        Kees Cook <kees@kernel.org>,
        "Gustavo A. R.
 Silva" <gustavoars@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20250526-qcom-tee-using-tee-ss-without-mem-obj-v5-0-024e3221b0b9@oss.qualcomm.com>
 <20250526-qcom-tee-using-tee-ss-without-mem-obj-v5-3-024e3221b0b9@oss.qualcomm.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250526-qcom-tee-using-tee-ss-without-mem-obj-v5-3-024e3221b0b9@oss.qualcomm.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.23.224/27];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.23.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[qualcomm.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Queue-Id: 4DE3E44192
X-Spamd-Bar: ----
Message-ID-Hash: XQSDG3YN2XZKZA5NOYT7Y2FSOS3FMRKN
X-Message-ID-Hash: XQSDG3YN2XZKZA5NOYT7Y2FSOS3FMRKN
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 03/12] tee: add TEE_IOCTL_PARAM_ATTR_TYPE_UBUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XQSDG3YN2XZKZA5NOYT7Y2FSOS3FMRKN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 5/27/25 1:56 AM, Amirreza Zarrabi wrote:
> For drivers that can transfer data to the TEE without using shared
> memory from client, it is necessary to receive the user address
> directly, bypassing any processing by the TEE subsystem. Introduce
> TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INPUT/OUTPUT/INOUT to represent
> userspace buffers.
> 

Could you expand on this, what is the issue with normal MEMREF?

Andrew

> Reviewed-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
> ---
>   drivers/tee/tee_core.c   | 33 +++++++++++++++++++++++++++++++++
>   include/linux/tee_drv.h  |  6 ++++++
>   include/uapi/linux/tee.h | 22 ++++++++++++++++------
>   3 files changed, 55 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
> index b9ea5a85278c..74e40ed83fa7 100644
> --- a/drivers/tee/tee_core.c
> +++ b/drivers/tee/tee_core.c
> @@ -387,6 +387,17 @@ static int params_from_user(struct tee_context *ctx, struct tee_param *params,
>   			params[n].u.value.b = ip.b;
>   			params[n].u.value.c = ip.c;
>   			break;
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INPUT:
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_OUTPUT:
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INOUT:
> +			params[n].u.ubuf.uaddr = u64_to_user_ptr(ip.a);
> +			params[n].u.ubuf.size = ip.b;
> +
> +			if (!access_ok(params[n].u.ubuf.uaddr,
> +				       params[n].u.ubuf.size))
> +				return -EFAULT;
> +
> +			break;
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT:
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
> @@ -455,6 +466,11 @@ static int params_to_user(struct tee_ioctl_param __user *uparams,
>   			    put_user(p->u.value.c, &up->c))
>   				return -EFAULT;
>   			break;
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_OUTPUT:
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INOUT:
> +			if (put_user((u64)p->u.ubuf.size, &up->b))
> +				return -EFAULT;
> +			break;
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
>   			if (put_user((u64)p->u.memref.size, &up->b))
> @@ -655,6 +671,13 @@ static int params_to_supp(struct tee_context *ctx,
>   			ip.b = p->u.value.b;
>   			ip.c = p->u.value.c;
>   			break;
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INPUT:
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_OUTPUT:
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INOUT:
> +			ip.a = (u64)p->u.ubuf.uaddr;
> +			ip.b = p->u.ubuf.size;
> +			ip.c = 0;
> +			break;
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT:
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
> @@ -757,6 +780,16 @@ static int params_from_supp(struct tee_param *params, size_t num_params,
>   			p->u.value.b = ip.b;
>   			p->u.value.c = ip.c;
>   			break;
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_OUTPUT:
> +		case TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INOUT:
> +			p->u.ubuf.uaddr = u64_to_user_ptr(ip.a);
> +			p->u.ubuf.size = ip.b;
> +
> +			if (!access_ok(params[n].u.ubuf.uaddr,
> +				       params[n].u.ubuf.size))
> +				return -EFAULT;
> +
> +			break;
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
>   		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
>   			/*
> diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
> index a54c203000ed..78bbf12f02f0 100644
> --- a/include/linux/tee_drv.h
> +++ b/include/linux/tee_drv.h
> @@ -82,6 +82,11 @@ struct tee_param_memref {
>   	struct tee_shm *shm;
>   };
>   
> +struct tee_param_ubuf {
> +	void * __user uaddr;
> +	size_t size;
> +};
> +
>   struct tee_param_value {
>   	u64 a;
>   	u64 b;
> @@ -92,6 +97,7 @@ struct tee_param {
>   	u64 attr;
>   	union {
>   		struct tee_param_memref memref;
> +		struct tee_param_ubuf ubuf;
>   		struct tee_param_value value;
>   	} u;
>   };
> diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
> index d0430bee8292..3e9b1ec5dfde 100644
> --- a/include/uapi/linux/tee.h
> +++ b/include/uapi/linux/tee.h
> @@ -151,6 +151,13 @@ struct tee_ioctl_buf_data {
>   #define TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT	6
>   #define TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT	7	/* input and output */
>   
> +/*
> + * These defines userspace buffer parameters.
> + */
> +#define TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INPUT	8
> +#define TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_OUTPUT	9
> +#define TEE_IOCTL_PARAM_ATTR_TYPE_UBUF_INOUT	10	/* input and output */
> +
>   /*
>    * Mask for the type part of the attribute, leaves room for more types
>    */
> @@ -186,14 +193,17 @@ struct tee_ioctl_buf_data {
>   /**
>    * struct tee_ioctl_param - parameter
>    * @attr: attributes
> - * @a: if a memref, offset into the shared memory object, else a value parameter
> - * @b: if a memref, size of the buffer, else a value parameter
> + * @a: if a memref, offset into the shared memory object,
> + *     else if a ubuf, address of the user buffer,
> + *     else a value parameter
> + * @b: if a memref or ubuf, size of the buffer, else a value parameter
>    * @c: if a memref, shared memory identifier, else a value parameter
>    *
> - * @attr & TEE_PARAM_ATTR_TYPE_MASK indicates if memref or value is used in
> - * the union. TEE_PARAM_ATTR_TYPE_VALUE_* indicates value and
> - * TEE_PARAM_ATTR_TYPE_MEMREF_* indicates memref. TEE_PARAM_ATTR_TYPE_NONE
> - * indicates that none of the members are used.
> + * @attr & TEE_PARAM_ATTR_TYPE_MASK indicates if memref, ubuf, or value is
> + * used in the union. TEE_PARAM_ATTR_TYPE_VALUE_* indicates value,
> + * TEE_PARAM_ATTR_TYPE_MEMREF_* indicates memref, and TEE_PARAM_ATTR_TYPE_UBUF_*
> + * indicates ubuf. TEE_PARAM_ATTR_TYPE_NONE indicates that none of the members
> + * are used.
>    *
>    * Shared memory is allocated with TEE_IOC_SHM_ALLOC which returns an
>    * identifier representing the shared memory object. A memref can reference
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
