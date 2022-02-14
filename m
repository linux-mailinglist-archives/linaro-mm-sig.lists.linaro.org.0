Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFD94B87E4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:43:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F46C401CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:43:03 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by lists.linaro.org (Postfix) with ESMTPS id 1BF1D3EE0E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 19:23:23 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id p10so10297979pfo.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 11:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=faMCUXgtmx+3AXg49JAI78UUXqy95249g9sm+/df9gg=;
        b=U1A+Bb18rPgucS1CdIquKO/KQlC0eR27NKxSUImY8Oiy7D1wNhaId2KoUHB4btYKEU
         4u9Zjg2eEAKHQ5kHwKidGlgPI8du5J16z8F+sJNHr6Uj2ZVwdwXJqvgp42B7LBkHCpLx
         fNsVnT2Gql7nO2NdBASFWTya/UuczDhwp9ARH9586d51DW8lEZyTnCfiXIfX1WYapWOE
         GeJhsm3lrs67uSDfIXrlZ1Pf7MRr5EXBs0AUNlNK+7KuWL5jxyEP+eaDXzmgQ6WOcWcS
         c73Yf/mPhRfRVhubGjsd9Yc1/pEuF8KVnxRvakBP5HkToeXTv1SCmGYbuc43TkrLsQRI
         zsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=faMCUXgtmx+3AXg49JAI78UUXqy95249g9sm+/df9gg=;
        b=US4AC+JjhDkY8ztA9vnNuSOIN+H24K3TPS/h9R+FHm9qhhvENiIbrLikdu0CCcOCHU
         HjuLtdqX2drwbUfC9vATK7+xbqHXKGVirRCLJoddxlr/Jf7i+JQArv5vLIOmwatRBar7
         Nz4WaAW7Vh7auYgSt0OE8t0QzsNcanjlztEN+JvZ6Sb127l+loP6JEH5Hf5WZSaqgTQ9
         lc6CnWYOylbdg2MOXrnDcprw+Ne55sNTBUzpWqh/wVl3Y65wGHb3/yYevIuu6h6iYlh/
         Mz0UnUC3icpCbU9Tc5cQS+2Eb5yXukWYhPy+/f7ctaroU3AxlG4qFew47UhGW1rW0v7d
         LUVw==
X-Gm-Message-State: AOAM5331DacjcV+nm0O+OrLpY1PS5pwlPP0XI5mbhTchclhTI7ILX0S7
	sashGzmfNB9r196Z9O/d7dA=
X-Google-Smtp-Source: ABdhPJzskEVgewovivQ93Yqm7pSL4EIc60jw8YJ4dfnBLxmZUnSxdbyKGDwkIVVRUcEgmSDV1Gt4LQ==
X-Received: by 2002:a05:6a00:1c42:: with SMTP id s2mr343232pfw.3.1644866602102;
        Mon, 14 Feb 2022 11:23:22 -0800 (PST)
Received: from localhost (2603-800c-1a02-1bae-e24f-43ff-fee6-449f.res6.spectrum.com. [2603:800c:1a02:1bae:e24f:43ff:fee6:449f])
        by smtp.gmail.com with ESMTPSA id g19sm19524769pfc.109.2022.02.14.11.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 11:23:21 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Mon, 14 Feb 2022 09:23:20 -1000
From: Tejun Heo <tj@kernel.org>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <YgqsKHS0wbZFrDkO@slm.duckdns.org>
References: <20220211161831.3493782-1-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220211161831.3493782-1-tjmercier@google.com>
X-MailFrom: htejun@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GK34JA3B6V5UAGLQNPKJC62SKHDFFHQH
X-Message-ID-Hash: GK34JA3B6V5UAGLQNPKJC62SKHDFFHQH
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:36 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org
 , linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 0/6] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GK34JA3B6V5UAGLQNPKJC62SKHDFFHQH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

On Fri, Feb 11, 2022 at 04:18:23PM +0000, T.J. Mercier wrote:
> The GPU/DRM cgroup controller came into being when a consensus[1]
> was reached that the resources it tracked were unsuitable to be integrated
> into memcg. Originally, the proposed controller was specific to the DRM
> subsystem and was intended to track GEM buffers and GPU-specific
> resources[2]. In order to help establish a unified memory accounting model
> for all GPU and all related subsystems, Daniel Vetter put forth a
> suggestion to move it out of the DRM subsystem so that it can be used by
> other DMA-BUF exporters as well[3]. This RFC proposes an interface that
> does the same.
> 
> [1]: https://patchwork.kernel.org/project/dri-devel/cover/20190501140438.9506-1-brian.welty@intel.com/#22624705
> [2]: https://lore.kernel.org/amd-gfx/20210126214626.16260-1-brian.welty@intel.com/
> [3]: https://lore.kernel.org/amd-gfx/YCVOl8%2F87bqRSQei@phenom.ffwll.local/

IIRC, the only consensus was that it needs to be a separate controller and
folks had trouble agreeing on resource types, control mechanism and
interface. Imma keep an eye on how the discussion develops among GPU folks.
Please feel free to ping if there's an area my input may be useful.

Thanks.

-- 
tejun
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
