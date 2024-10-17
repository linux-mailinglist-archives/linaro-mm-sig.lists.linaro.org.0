Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF2C9A206B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 13:00:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80C6D3F33B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 11:00:57 +0000 (UTC)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	by lists.linaro.org (Postfix) with ESMTPS id 4F2243F33B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Oct 2024 11:00:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=rnixzfTC;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.217.54 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-4a47240d31aso223514137.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Oct 2024 04:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729162841; x=1729767641; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dzueIzrbpWQAQzIPzKgcuzvlN5AJYKxxLdrxhltbeaY=;
        b=rnixzfTC9RK2OfmuJtjPJO70aak3Gm9uTsuyk/oYYnvEM5SnpbaEyhA+Cowig75taE
         0fSN0OUVwpsGjLulV37JwTLNMJzSRDEKtq7SKwKdnncjeo5DCIJqCA1VuNMW0Vci1rTh
         Z0VEhvGfze/2V+DLZNPJCyawEna/FemLxuJCSwmtF2zofCC4mj1d/VXknpzU+kf5RKqS
         Y5Tgdf5u3UeNb7fj3OH+qMXlVg7oaUcjpbalNsozLuMpsyvYiNz/xTdM3x17bZdHXILc
         SNrSUI1zmzWpi/QSm7b3Cs2jK96N3zWs+93WayVEcxMHnXhzgvcET+OUt0XNpIRBsE+f
         UO/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729162841; x=1729767641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dzueIzrbpWQAQzIPzKgcuzvlN5AJYKxxLdrxhltbeaY=;
        b=mBn/gbldRcOf4pGO5zZFQtleaNDnRsf/Baz7FtRP5iCy/Q+ex841AcUDuI+aGwqR2i
         RPuD/bZZSZqLvETfkr1RwlkRDuiOzNAjd10FCRzjXQfpDKFedNksgnTVvk/5vh7rjQu1
         5LxAXB0Bru5G11pa8rcVMh6e0VqAmnc5IcG656sQhLIHUoNtrxXQuwjKeZXpw84rCCcD
         QtHT3EuyZwLE04TYvhPpv40Bdoej3rltBalBhfHWiZ3FqVqIFuLaqgDKXLHEzpGo7Ng8
         6pJVZNn8a8PVGR2ZB1Yx2T7gomxYq/rISdvBFb+MyuczA01LPoidUnt+rJzyglQTjqXj
         DugA==
X-Forwarded-Encrypted: i=1; AJvYcCWRs/yPVmyVRF9WIOEMD6Xf+btU/RCpR5iV3gFZ3HlOW5GTGByMSpzL36fXJHY6mXmeg1hG81RafibG/Rzw@lists.linaro.org
X-Gm-Message-State: AOJu0YzQcX9FL8Nha12U6ecog/kQwiLBRewRxf6kVpeWLSDh4Z+eMAPf
	1i93kOBcQzb9yPw3RnyD8bh8h3+KZdLOk8ZS//gaXMiXu1w9uGAEnMK3HBX/6nsxPDVakwgjxr4
	n9jpN5QrU3Vjzzg6FJUz+DVo2sNCkZnqpk1hR5gFW
X-Google-Smtp-Source: AGHT+IFIkSv1zq1QUikiociz6eI2jMdfdZm0OR2khmhrLpWMG/LnXM7lEBRD+jifjqruQfchix8Rv601CB8w9YyRG6g=
X-Received: by 2002:a05:6102:41a1:b0:4a3:ed09:4746 with SMTP id
 ada2fe7eead31-4a5b57946e1mr6309322137.0.1729162840664; Thu, 17 Oct 2024
 04:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20241015101716.740829-1-jens.wiklander@linaro.org> <20241015101716.740829-3-jens.wiklander@linaro.org>
In-Reply-To: <20241015101716.740829-3-jens.wiklander@linaro.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 17 Oct 2024 16:30:29 +0530
Message-ID: <CAFA6WYMFys_woiF3dzwaXjMy7Y-gTLgHE0PBZtEf6jH-mkc40g@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F2243F33B
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.54:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: HEBIZFFGFM5TE4DIQUL43W5KQ37OBNXG
X-Message-ID-Hash: HEBIZFFGFM5TE4DIQUL43W5KQ37OBNXG
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 2/2] optee: support restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HEBIZFFGFM5TE4DIQUL43W5KQ37OBNXG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jens,

On Tue, 15 Oct 2024 at 15:47, Jens Wiklander <jens.wiklander@linaro.org> wrote:
>
> Add support in the OP-TEE backend driver for restricted memory
> allocation. The support is limited to only the SMC ABI and for secure
> video buffers.
>
> OP-TEE is probed for the range of restricted physical memory and a
> memory pool allocator is initialized if OP-TEE have support for such
> memory.
>
> Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
> ---
>  drivers/tee/optee/core.c          | 21 +++++++++++++++
>  drivers/tee/optee/optee_private.h |  6 +++++
>  drivers/tee/optee/optee_smc.h     | 35 ++++++++++++++++++++++++
>  drivers/tee/optee/smc_abi.c       | 45 ++++++++++++++++++++++++++++---
>  4 files changed, 104 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
> index 39e688d4e974..b6d5cbc6728d 100644
> --- a/drivers/tee/optee/core.c
> +++ b/drivers/tee/optee/core.c
> @@ -95,6 +95,25 @@ void optee_release_supp(struct tee_context *ctx)
>         optee_supp_release(&optee->supp);
>  }
>
> +int optee_rstmem_alloc(struct tee_context *ctx, struct tee_shm *shm,
> +                      u32 flags, size_t size)
> +{
> +       struct optee *optee = tee_get_drvdata(ctx->teedev);
> +
> +       if (!optee->sdp_pool)
> +               return -EINVAL;
> +       if (flags != TEE_IOC_FLAG_SECURE_VIDEO)
> +               return -EINVAL;
> +       return optee->sdp_pool->ops->alloc(optee->sdp_pool, shm, size, 0);
> +}
> +
> +void optee_rstmem_free(struct tee_context *ctx, struct tee_shm *shm)
> +{
> +       struct optee *optee = tee_get_drvdata(ctx->teedev);
> +
> +       optee->sdp_pool->ops->free(optee->sdp_pool, shm);
> +}
> +
>  void optee_remove_common(struct optee *optee)
>  {
>         /* Unregister OP-TEE specific client devices on TEE bus */
> @@ -111,6 +130,8 @@ void optee_remove_common(struct optee *optee)
>         tee_device_unregister(optee->teedev);
>
>         tee_shm_pool_free(optee->pool);
> +       if (optee->sdp_pool)
> +               optee->sdp_pool->ops->destroy_pool(optee->sdp_pool);
>         optee_supp_uninit(&optee->supp);
>         mutex_destroy(&optee->call_queue.mutex);
>  }
> diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
> index 424898cdc4e9..1f6b2cc992a9 100644
> --- a/drivers/tee/optee/optee_private.h
> +++ b/drivers/tee/optee/optee_private.h
> @@ -200,6 +200,7 @@ struct optee_ops {
>   * @notif:             notification synchronization struct
>   * @supp:              supplicant synchronization struct for RPC to supplicant
>   * @pool:              shared memory pool
> + * @sdp_pool:          restricted memory pool for secure data path
>   * @rpc_param_count:   If > 0 number of RPC parameters to make room for
>   * @scan_bus_done      flag if device registation was already done.
>   * @scan_bus_work      workq to scan optee bus and register optee drivers
> @@ -218,6 +219,7 @@ struct optee {
>         struct optee_notif notif;
>         struct optee_supp supp;
>         struct tee_shm_pool *pool;
> +       struct tee_shm_pool *sdp_pool;
>         unsigned int rpc_param_count;
>         bool   scan_bus_done;
>         struct work_struct scan_bus_work;
> @@ -340,6 +342,10 @@ void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
>  int optee_do_bottom_half(struct tee_context *ctx);
>  int optee_stop_async_notif(struct tee_context *ctx);
>
> +int optee_rstmem_alloc(struct tee_context *ctx, struct tee_shm *shm,
> +                      u32 flags, size_t size);
> +void optee_rstmem_free(struct tee_context *ctx, struct tee_shm *shm);
> +
>  /*
>   * Small helpers
>   */
> diff --git a/drivers/tee/optee/optee_smc.h b/drivers/tee/optee/optee_smc.h
> index 7d9fa426505b..c3b8a1c204af 100644
> --- a/drivers/tee/optee/optee_smc.h
> +++ b/drivers/tee/optee/optee_smc.h
> @@ -234,6 +234,39 @@ struct optee_smc_get_shm_config_result {
>         unsigned long settings;
>  };
>
> +/*
> + * Get Secure Data Path memory config
> + *
> + * Returns the Secure Data Path memory config.
> + *
> + * Call register usage:
> + * a0   SMC Function ID, OPTEE_SMC_GET_SDP_CONFIG
> + * a2-6 Not used, must be zero
> + * a7   Hypervisor Client ID register
> + *
> + * Have config return register usage:
> + * a0   OPTEE_SMC_RETURN_OK
> + * a1   Physical address of start of SDP memory
> + * a2   Size of SDP memory
> + * a3   Not used
> + * a4-7 Preserved
> + *
> + * Not available register usage:
> + * a0   OPTEE_SMC_RETURN_ENOTAVAIL
> + * a1-3 Not used
> + * a4-7 Preserved
> + */
> +#define OPTEE_SMC_FUNCID_GET_SDP_CONFIG        20
> +#define OPTEE_SMC_GET_SDP_CONFIG \
> +       OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_SDP_CONFIG)
> +
> +struct optee_smc_get_sdp_config_result {
> +       unsigned long status;
> +       unsigned long start;
> +       unsigned long size;
> +       unsigned long flags;
> +};
> +
>  /*
>   * Exchanges capabilities between normal world and secure world
>   *
> @@ -278,6 +311,8 @@ struct optee_smc_get_shm_config_result {
>  #define OPTEE_SMC_SEC_CAP_ASYNC_NOTIF          BIT(5)
>  /* Secure world supports pre-allocating RPC arg struct */
>  #define OPTEE_SMC_SEC_CAP_RPC_ARG              BIT(6)
> +/* Secure world supports Secure Data Path */
> +#define OPTEE_SMC_SEC_CAP_SDP                  BIT(7)
>
>  #define OPTEE_SMC_FUNCID_EXCHANGE_CAPABILITIES 9
>  #define OPTEE_SMC_EXCHANGE_CAPABILITIES \
> diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
> index 844285d4f03c..05068c70c791 100644
> --- a/drivers/tee/optee/smc_abi.c
> +++ b/drivers/tee/optee/smc_abi.c
> @@ -1164,6 +1164,8 @@ static void optee_get_version(struct tee_device *teedev,
>                 v.gen_caps |= TEE_GEN_CAP_REG_MEM;
>         if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_MEMREF_NULL)
>                 v.gen_caps |= TEE_GEN_CAP_MEMREF_NULL;
> +       if (optee->sdp_pool)
> +               v.gen_caps |= TEE_GEN_CAP_RSTMEM;
>         *vers = v;
>  }
>
> @@ -1186,6 +1188,8 @@ static const struct tee_driver_ops optee_clnt_ops = {
>         .cancel_req = optee_cancel_req,
>         .shm_register = optee_shm_register,
>         .shm_unregister = optee_shm_unregister,
> +       .rstmem_alloc = optee_rstmem_alloc,
> +       .rstmem_free = optee_rstmem_free,
>  };
>
>  static const struct tee_desc optee_clnt_desc = {
> @@ -1202,6 +1206,8 @@ static const struct tee_driver_ops optee_supp_ops = {
>         .supp_send = optee_supp_send,
>         .shm_register = optee_shm_register_supp,
>         .shm_unregister = optee_shm_unregister_supp,
> +       .rstmem_alloc = optee_rstmem_alloc,
> +       .rstmem_free = optee_rstmem_free,
>  };
>
>  static const struct tee_desc optee_supp_desc = {
> @@ -1582,6 +1588,32 @@ static inline int optee_load_fw(struct platform_device *pdev,
>  }
>  #endif
>
> +static int optee_sdp_pool_init(struct optee *optee)
> +{
> +       struct tee_shm_pool *pool;
> +       union {
> +               struct arm_smccc_res smccc;
> +               struct optee_smc_get_sdp_config_result result;
> +       } res;
> +
> +       if (!(optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_SDP))
> +               return 0;
> +
> +       optee->smc.invoke_fn(OPTEE_SMC_GET_SDP_CONFIG, 0, 0, 0, 0, 0, 0, 0,
> +                            &res.smccc);

IMHO, to put more weight on this proposal we should also include
allocation from the kernel CMA pool alongside the reserved restricted
memory pool. The implementation would be quite similar to how we
support dynamic SHM based on platform specific capability:
OPTEE_SMC_SEC_CAP_DYNAMIC_SHM. We can have a similar capability for
dynamic restricted memory as: OPTEE_SMC_SEC_CAP_DYNAMIC_RSTMEM.

The major reason to support it is to allow mediatek use-case [1] of
restricting memory dynamically which gets allocated from the CMA pool.
Although, it won't be something that we can test on Qemu from a
hardware enforcement perspective, at least we can test it on Qemu
conceptually. Thoughts?

[1] https://lore.kernel.org/linux-arm-kernel/20240515112308.10171-9-yong.wu@mediatek.com/

-Sumit

> +       if (res.result.status != OPTEE_SMC_RETURN_OK) {
> +               pr_err("Secure Data Path service not available\n");
> +               return 0;
> +       }
> +
> +       pool = tee_rstmem_gen_pool_alloc(res.result.start, res.result.size);
> +       if (IS_ERR(pool))
> +               return PTR_ERR(pool);
> +       optee->sdp_pool = pool;
> +
> +       return 0;
> +}
> +
>  static int optee_probe(struct platform_device *pdev)
>  {
>         optee_invoke_fn *invoke_fn;
> @@ -1677,7 +1709,7 @@ static int optee_probe(struct platform_device *pdev)
>         optee = kzalloc(sizeof(*optee), GFP_KERNEL);
>         if (!optee) {
>                 rc = -ENOMEM;
> -               goto err_free_pool;
> +               goto err_free_shm_pool;
>         }
>
>         optee->ops = &optee_ops;
> @@ -1685,10 +1717,14 @@ static int optee_probe(struct platform_device *pdev)
>         optee->smc.sec_caps = sec_caps;
>         optee->rpc_param_count = rpc_param_count;
>
> +       rc = optee_sdp_pool_init(optee);
> +       if (rc)
> +               goto err_free_optee;
> +
>         teedev = tee_device_alloc(&optee_clnt_desc, NULL, pool, optee);
>         if (IS_ERR(teedev)) {
>                 rc = PTR_ERR(teedev);
> -               goto err_free_optee;
> +               goto err_sdp_pool_uninit;
>         }
>         optee->teedev = teedev;
>
> @@ -1786,9 +1822,12 @@ static int optee_probe(struct platform_device *pdev)
>         tee_device_unregister(optee->supp_teedev);
>  err_unreg_teedev:
>         tee_device_unregister(optee->teedev);
> +err_sdp_pool_uninit:
> +       if (optee->sdp_pool)
> +               optee->sdp_pool->ops->destroy_pool(optee->sdp_pool);
>  err_free_optee:
>         kfree(optee);
> -err_free_pool:
> +err_free_shm_pool:
>         tee_shm_pool_free(pool);
>         if (memremaped_shm)
>                 memunmap(memremaped_shm);
> --
> 2.43.0
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
