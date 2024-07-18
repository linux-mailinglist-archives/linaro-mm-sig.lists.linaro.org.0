Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E280934C78
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jul 2024 13:28:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94A5744209
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jul 2024 11:28:01 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C17473F3B3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jul 2024 11:27:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PSLBthdI;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5F8DB61B46;
	Thu, 18 Jul 2024 11:27:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73BF0C4AF09;
	Thu, 18 Jul 2024 11:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721302078;
	bh=HoxUNH3rJHWxZTGHOWJYLSl2Dr3ygT83Mu7tovtsC+4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PSLBthdIJCYs6KFMs38FEeFgbBqeMQ7IARAiILyMrFfV+fJ1moSd5DyXfeMTswlxm
	 2/6ArORaDNQWturwlBAftcgLaUt2sYzNv3vb2mUjuVxirJ+ngHwzn5bYFsDtvSNPsG
	 1vYXrwDnyXktMzc94+/PII2bplXVQdBiBUndKykgu/qT1AsIxlxudVL5Ij2YY81WeJ
	 otcfOpXcl8vx8TqLIPYNnEfAsTVqQFevovyrZiK+/MEBccvI6/DBtrl1JWB4uHI0zU
	 xEBF/j4N5jbj0wvHBrM7GHxbRQYM/jA1e1KaFzRQaKSZSCWux7+lccO8fOVV3odCy0
	 qKdx4WpaY8HeA==
Message-ID: <09605d65-8a0e-4d28-be8e-a07bbdf376d6@kernel.org>
Date: Thu, 18 Jul 2024 13:27:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Amirreza Zarrabi <quic_azarrabi@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 srinivas.kandagatla@linaro.org, bartosz.golaszewski@linaro.org
References: <20240702-qcom-tee-object-and-ioctls-v1-0-633c3ddf57ee@quicinc.com>
 <20240702-qcom-tee-object-and-ioctls-v1-1-633c3ddf57ee@quicinc.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240702-qcom-tee-object-and-ioctls-v1-1-633c3ddf57ee@quicinc.com>
X-Rspamd-Queue-Id: C17473F3B3
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6PUKVC2TLWOX3IRE7KBJRGFEQR6A22HM
X-Message-ID-Hash: 6PUKVC2TLWOX3IRE7KBJRGFEQR6A22HM
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] firmware: qcom: implement object invoke support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6PUKVC2TLWOX3IRE7KBJRGFEQR6A22HM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 03/07/2024 07:57, Amirreza Zarrabi wrote:
> Qualcomm TEE hosts Trusted Applications and Services that run in the
> secure world. Access to these resources is provided using object
> capabilities. A TEE client with access to the capability can invoke
> the object and request a service. Similarly, TEE can request a service
> from nonsecure world with object capabilities that are exported to secure
> world.
> 
> We provide qcom_tee_object which represents an object in both secure
> and nonsecure world. TEE clients can invoke an instance of qcom_tee_object
> to access TEE. TEE can issue a callback request to nonsecure world
> by invoking an instance of qcom_tee_object in nonsecure world.
> 
> Any driver in nonsecure world that is interested to export a struct (or a
> service object) to TEE, requires to embed an instance of qcom_tee_object in
> the relevant struct and implements the dispatcher function which is called
> when TEE invoked the service object.
> 
> We also provids simplified API which implements the Qualcomm TEE transport
> protocol. The implementation is independent from any services that may
> reside in nonsecure world.
> 
> Signed-off-by: Amirreza Zarrabi <quic_azarrabi@quicinc.com>
> ---
>  drivers/firmware/qcom/Kconfig                      |   14 +
>  drivers/firmware/qcom/Makefile                     |    2 +
>  drivers/firmware/qcom/qcom_object_invoke/Makefile  |    4 +
>  drivers/firmware/qcom/qcom_object_invoke/async.c   |  142 +++
>  drivers/firmware/qcom/qcom_object_invoke/core.c    | 1139 ++++++++++++++++++++
>  drivers/firmware/qcom/qcom_object_invoke/core.h    |  186 ++++
>  .../qcom/qcom_object_invoke/qcom_scm_invoke.c      |   22 +
>  .../firmware/qcom/qcom_object_invoke/release_wq.c  |   90 ++
>  include/linux/firmware/qcom/qcom_object_invoke.h   |  233 ++++
>  9 files changed, 1832 insertions(+)
> 
> diff --git a/drivers/firmware/qcom/Kconfig b/drivers/firmware/qcom/Kconfig
> index 7f6eb4174734..103ab82bae9f 100644
> --- a/drivers/firmware/qcom/Kconfig
> +++ b/drivers/firmware/qcom/Kconfig
> @@ -84,4 +84,18 @@ config QCOM_QSEECOM_UEFISECAPP
>  	  Select Y here to provide access to EFI variables on the aforementioned
>  	  platforms.
>  
> +config QCOM_OBJECT_INVOKE_CORE

Let's avoid another rant from Linus and add here either proper defaults
or dependencies.

> +	bool "Secure TEE Communication Support"
> +	help
> +	  Various Qualcomm SoCs have a Trusted Execution Environment (TEE) running
> +	  in the Trust Zone. This module provides an interface to that via the
> +	  capability based object invocation, using SMC calls.
> +
> +	  OBJECT_INVOKE_CORE allows capability based secure communication between
> +	  TEE and VMs. Using OBJECT_INVOKE_CORE, kernel can issue calls to TEE or
> +	  TAs to request a service or exposes services to TEE and TAs. It implements
> +	  the necessary marshaling of messages with TEE.
> +
> +	  Select Y here to provide access to TEE.
> +
>  endmenu
> diff --git a/drivers/firmware/qcom/Makefile b/drivers/firmware/qc


...

> +		} else {
> +			/* TEE obtained the ownership of QCOM_TEE_OBJECT_TYPE_CB_OBJECT
> +			 * input objects in 'u'. On further failure, TEE is responsible
> +			 * to release them.
> +			 */
> +
> +			oic->flags |= OIC_FLAG_QCOM_TEE;
> +		}
> +
> +		/* Is it a callback request?! */
> +		if (response_type != QCOM_TEE_RESULT_INBOUND_REQ_NEEDED) {
> +			if (!*result) {
> +				ret = update_args(u, oic);
> +				if (ret) {
> +					arg_for_each_output_object(i, u)
> +						put_qcom_tee_object(u[i].o);
> +				}
> +			}
> +
> +			break;
> +
> +		} else {
> +			oic->flags |= OIC_FLAG_BUSY;
> +
> +			/* Before dispatching the request, handle any pending async requests. */
> +			__fetch__async_reqs(oic);
> +
> +			qcom_tee_object_invoke(oic, cb_msg);
> +		}
> +	}
> +
> +	__fetch__async_reqs(oic);
> +
> +out:
> +	qcom_tee_object_invoke_ctx_uninit(oic);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(qcom_tee_object_do_invoke);
> +
> +/* Primordial Object. */
> +/* It is invoked by TEE for kernel services. */
> +
> +static struct qcom_tee_object *primordial_object = NULL_QCOM_TEE_OBJECT;
> +static DEFINE_MUTEX(primordial_object_lock);

Oh my... except that it looks like undocumented ABI, please avoid
file-scope variables.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
