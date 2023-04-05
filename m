Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 445E56D801F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 16:55:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A99E3EE30
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 14:55:23 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 597773EBED
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 14:55:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=VOcQEAwu;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.54) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-947a47eb908so55896666b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 07:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680706511;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MOaR+m1IdKafTORqEeSKI9ra6GC/lDyynNYDfbx3OGU=;
        b=VOcQEAwu5WIl2BXbkiz++NKRv+L2KBXjYnQVvHuoDd8AYVukZMZAp7Kh8e2RwoLTO6
         cOGPDQ+oJuNjOiImUXbZmozOYjQC5Pmo78cdP+qD8uAna23UHG4I4ZO0cW7zwr4ZeKau
         aHnRQL6kE7IfsbbjCxwiUTLPTY+vlPLfyqntA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680706511;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MOaR+m1IdKafTORqEeSKI9ra6GC/lDyynNYDfbx3OGU=;
        b=kxDcWy3x2MUHq/0onodBeFwb8nzYI0JIQMJjvjvgxhpx8Gw3KEcgSvJkTZ3LettxnU
         vhqz9sfYZw3fDLKn45laVQgHqpzqgbyy7Dqd5MtXvmO2Rdl+wieq2CkV+ph6T0xp9mJ7
         85aNT8LcLdPEl6VGuRoVTkbxFHh8AwHAU0qbvNEQxvs0f7zb7Dm5ZsbGyqsuHzrKgkze
         cBPiL5ePdRcLEY1GbNKwsMAqG4qTS4aXyhBPxTw0SnAgCx+jFujMcS+5exP96Ir9ZPVa
         Wbcz5/ypALqP9C3QZhw5VqGsIrXqj+qrdKiJa/uSxbLPZ0MuiE48qM/u93LhAmYIS5VX
         NYSw==
X-Gm-Message-State: AAQBX9fwa2pEGZ4lAYHXO+tatjRHKvgKkQbkTlmUr6egAySbDnaebLgA
	6/s9r9DoR+VFuEBDaj+Zut8x2g==
X-Google-Smtp-Source: AKy350bSVmKQEeeS1X8+Q1+6RPrW42vDuHh4vOBA13B/ImZaryj0w4jta/xaGwUENLHN7VRkn928jQ==
X-Received: by 2002:a17:906:5195:b0:92c:fc0:b229 with SMTP id y21-20020a170906519500b0092c0fc0b229mr2784171ejk.0.1680706511286;
        Wed, 05 Apr 2023 07:55:11 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id ty25-20020a170907c71900b00948ca65d61fsm3581129ejc.140.2023.04.05.07.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 07:55:10 -0700 (PDT)
Date: Wed, 5 Apr 2023 16:55:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZC2LzME5uHT3JDht@phenom.ffwll.local>
Mail-Followup-To: Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>,
	Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Mary <mary@mary.zone>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	linux-sgx@vger.kernel.org, asahi@lists.linux.dev
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-13-917ff5bc80a8@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307-rust-drm-v1-13-917ff5bc80a8@asahilina.net>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 597773EBED
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	URIBL_BLOCKED(0.00)[ffwll.ch:dkim,ffwll.ch:url,mail-ej1-f54.google.com:helo,mail-ej1-f54.google.com:rdns,asahilina.net:email];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: NNCJFL3TT5LF7AEMP7ERGOHCXFDXRU5S
X-Message-ID-Hash: NNCJFL3TT5LF7AEMP7ERGOHCXFDXRU5S
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 13/18] drm/gem: Add a flag to control whether objects can be exported
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NNCJFL3TT5LF7AEMP7ERGOHCXFDXRU5S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 07, 2023 at 11:25:38PM +0900, Asahi Lina wrote:
> Drivers may want to support driver-private objects, which cannot be
> shared. This allows them to share a single lock and enables other
> optimizations.
> 
> Add an `exportable` field to drm_gem_object, which blocks PRIME export
> if set to false. It is initialized to true in
> drm_gem_private_object_init.
> 
> Signed-off-by: Asahi Lina <lina@asahilina.net>

Two comments on this:

- for kernel objects which userspace never access itself the usual
  approach is to simply not install a gem handle on that drm_file. If
  userspace doesn't even have a handle they also can't export it. I think
  that should take care of the kernel object case you have in the asahi
  driver.

- for the vm-private object case you need some more checks anyway, since
  you can't even use such objects on a different vm within the same
  drm_file. Maybe the gpuva helpers can eventually cover this, but in
  general these driver cases are handled by simply overwriting the
  ->export case, you can check there for vm_id.is_none() and if that's not
  the case, hand the actual exporting to the helper function.

  Whether this is done in the rust wrappers and you keep the
  set_exportable or just in asahi code is kinda meh, but personally for
  consistency I'd put that into asahi code. Imo it's much clearer when you
  explicitly list (by coding them into your export impl) the reasons why a
  buffer isn't exportable, instead of forcing people to chase
  set_exportable calls throughout the codebase. But also a bit matters of
  taste :-)

Either way (unless a missed a case) this should imo be handled in asahi
code and not in C or the rust glue.
-Daniel

> ---
>  drivers/gpu/drm/drm_gem.c   | 1 +
>  drivers/gpu/drm/drm_prime.c | 5 +++++
>  include/drm/drm_gem.h       | 8 ++++++++
>  3 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 7a3cb08dc942..152ad9295a8d 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -166,6 +166,7 @@ void drm_gem_private_object_init(struct drm_device *dev,
>  
>  	drm_vma_node_reset(&obj->vma_node);
>  	INIT_LIST_HEAD(&obj->lru_node);
> +	obj->exportable = true;
>  }
>  EXPORT_SYMBOL(drm_gem_private_object_init);
>  
> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index f924b8b4ab6b..9d2dd982580e 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -391,6 +391,11 @@ static struct dma_buf *export_and_register_object(struct drm_device *dev,
>  		return dmabuf;
>  	}
>  
> +	if (!obj->exportable) {
> +		dmabuf = ERR_PTR(-EINVAL);
> +		return dmabuf;
> +	}
> +
>  	if (obj->funcs && obj->funcs->export)
>  		dmabuf = obj->funcs->export(obj, flags);
>  	else
> diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
> index 772a4adf5287..852dec3cf763 100644
> --- a/include/drm/drm_gem.h
> +++ b/include/drm/drm_gem.h
> @@ -361,6 +361,14 @@ struct drm_gem_object {
>  	 * The current LRU list that the GEM object is on.
>  	 */
>  	struct drm_gem_lru *lru;
> +
> +	/**
> +	 * @exportable:
> +	 *
> +	 * Whether this GEM object can be exported via the drm_gem_object_funcs->export
> +	 * callback. Defaults to true.
> +	 */
> +	bool exportable;
>  };
>  
>  /**
> 
> -- 
> 2.35.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
