Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 599C175A043
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jul 2023 22:58:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 255DB42B38
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jul 2023 20:58:08 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 5EED83F0B4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jul 2023 20:58:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=KQEJXQUL;
	spf=pass (lists.linaro.org: domain of fmartine@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=fmartine@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689800282;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=u8/7gfrcuf8/DAAooprDSDfzeOTJmiOUpVBm/359QlE=;
	b=KQEJXQULDBeFoapiLzLSqf2YdLQDCvPSOS+DzIzTDJeG2QA+aIicsvz2nLzjfe1fz4Cs2Q
	GQr73ibf+Bn2NFLqN+VFOWClQSgerctpgB7nvU/IKSGyZfrjoIxR/XGTN7T1gPN7lOdcdA
	Dazyk/iw3FwKw1kRWA8sDF7kM/24SBg=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-9yxM0_8ZN8ek8zwwCKHFCw-1; Wed, 19 Jul 2023 16:57:09 -0400
X-MC-Unique: 9yxM0_8ZN8ek8zwwCKHFCw-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-315a03cae87so532128f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jul 2023 13:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689800228; x=1690405028;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u8/7gfrcuf8/DAAooprDSDfzeOTJmiOUpVBm/359QlE=;
        b=f4JKdmNh9g6eG0LuuqIH1qCQXbPe4ZR9aObmQWtqcwbVzcdhTTGZaOgV9/iixFCTxr
         sFVWXDv0j/o7P+KfZo9CxjRIa9x6egkg3JGf/He+UKIqwu1o1S7nWu6lt8vmyRAuAR/w
         M64aLz1UtvYju3Oqld4pnaZqJ1qCwaGMb1L2cwk28aVAD81GOoK3OxlP2JZlIhdKs4ct
         1A3v6DX9DPmLRR9ooDSndcbX/+5V2iRvvsSff6OdxjwTd9tG1h/aDWEWLbhzMfA5/QhZ
         9oOvYGLzVxH96pl9/Bp0NuyRXsE6nfoJ9DBeAH7cy5dTS9rLmzRrWLCxI9QQ1sOH4mem
         1pUg==
X-Gm-Message-State: ABy/qLZwMEgKuMLd1v3d91OJjBE+ZxkLcZXkq9HtWeImhwBPNe5FiiF6
	zTemJSPmapWwc0AhkjOMJt1otYX/mmd/xBjV0HLIYcqL95aIo5KcJOPKWl5ivtQwrMIek4Sx+1F
	hjW5xHIxlS64npOLZNzL7sjBa+SA=
X-Received: by 2002:a5d:6808:0:b0:313:ef62:6370 with SMTP id w8-20020a5d6808000000b00313ef626370mr779422wru.10.1689800228320;
        Wed, 19 Jul 2023 13:57:08 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFLQI82PXe04TmP/q3eozKaXk38E3F+Qti+S7R2zewTlwbsEDY2//S9hJbdkbY4vyqMa8EZ9Q==
X-Received: by 2002:a5d:6808:0:b0:313:ef62:6370 with SMTP id w8-20020a5d6808000000b00313ef626370mr779410wru.10.1689800228058;
        Wed, 19 Jul 2023 13:57:08 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t14-20020a5d460e000000b0030fb4b55c13sm6150243wrq.96.2023.07.19.13.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 13:57:07 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 maarten.lankhorst@linux.intel.com
In-Reply-To: <20230320015829.52988-1-jiapeng.chong@linux.alibaba.com>
References: <20230320015829.52988-1-jiapeng.chong@linux.alibaba.com>
Date: Wed, 19 Jul 2023 22:57:07 +0200
Message-ID: <871qh3k4bg.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5EED83F0B4
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.221.72:received,170.10.129.124:from];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	FORGED_SENDER(0.30)[javierm@redhat.com,fmartine@redhat.com];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,fmartine@redhat.com];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: C7OI4GYU5HG5ASAIEBEHCG25LLJRCJSA
X-Message-ID-Hash: C7OI4GYU5HG5ASAIEBEHCG25LLJRCJSA
X-MailFrom: fmartine@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, tzimmermann@suse.de, Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/shmem-helper: Remove duplicate include
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C7OI4GYU5HG5ASAIEBEHCG25LLJRCJSA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jiapeng Chong <jiapeng.chong@linux.alibaba.com> writes:

> ./drivers/gpu/drm/drm_gem_shmem_helper.c: linux/module.h is included more than once.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=4567
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
