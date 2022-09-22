Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3965E5E67BA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 17:56:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C2443F8CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 15:56:44 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id 8BB383F549
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 15:56:38 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id jm5so8196260plb.13
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 08:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=TZpRIJCCMZKyVUgNnwboEjnHYpEIRQBSXZlSwc7OZ+0=;
        b=lKwDDBjvYm/0Jleq+GCxBaTtwnHH7tK+nJ5dJ9Mroo7Wx2WiOGB/Kmka/kC9bYFq8z
         aE3zrV852KZPixgDhOan1L1Vq5Tj1ydcVjIMjp+7gLHmlIsooLMnRpZ01jzKR4yf16m5
         6AQEJMsyFTKj/8+82bO+4x4lXyaSTMa1R26kY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=TZpRIJCCMZKyVUgNnwboEjnHYpEIRQBSXZlSwc7OZ+0=;
        b=Pb9bXqZIZJpQrMoCVZdQZeI4R/zcsUm+zxOlr7WHxuwdBQUP2d4meebIGIIYIOK8bG
         LrVNU8swmM/jWiOxajEMs9CkknpMCVqtBWJW98oL+MYgL5j7pvuXDB9NvgVwvDoVUAxA
         Tp4XyTNkbBClLUttZNlKV5GNFlN1xKywGRBke7QZlOO7uI2USbG2VlMlkYOTEQ1yq2Gn
         EfIpVXEB4WgP0W6SbJ3DWhxO+zaiYMnEHoMky+Bq7+IcVrk6MpdfuGukDtteBevOLhoM
         7imJ6coOUb9KkyweI06Bz3D0X4CoudgEp9fkLJ5HtJP7wgsMmpfJmLnWowO8A5hAkhtz
         RSpQ==
X-Gm-Message-State: ACrzQf3ujMI+Sbigkaxy6lSDFJ380OP0oa/5dt1O3W4v+Cgj+0P+sWOy
	DwS89xH3YYM1gM2/Wl+pxiiIOg==
X-Google-Smtp-Source: AMsMyM6wj70ZRZNEGtsTQjOpU6Y4OkbiX+0Wag8Z4tUWxe6CdbDk3WijTof+igifPO84VXufZHizeQ==
X-Received: by 2002:a17:90b:4d8e:b0:200:73b4:4da2 with SMTP id oj14-20020a17090b4d8e00b0020073b44da2mr16393990pjb.197.1663862197527;
        Thu, 22 Sep 2022 08:56:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b5-20020a170902d50500b00176ca533ea0sm4327600plg.90.2022.09.22.08.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 08:56:36 -0700 (PDT)
Date: Thu, 22 Sep 2022 08:56:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <202209220855.B8DA16E@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-12-keescook@chromium.org>
 <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
Message-ID-Hash: QPT65QRCYMRXESVZ6FB7KYHPVAGCESCH
X-Message-ID-Hash: QPT65QRCYMRXESVZ6FB7KYHPVAGCESCH
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vlastimil Babka <vbabka@suse.cz>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Hao Luo <haoluo@google.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, Feng Tang <feng.tang@intel.com>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel
 .org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/12] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QPT65QRCYMRXESVZ6FB7KYHPVAGCESCH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 22, 2022 at 11:23:46AM +0200, Miguel Ojeda wrote:
> On Thu, Sep 22, 2022 at 5:10 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > -#ifdef __alloc_size__
> > -# define __alloc_size(x, ...)  __alloc_size__(x, ## __VA_ARGS__) __malloc
> > -#else
> > -# define __alloc_size(x, ...)  __malloc
> > -#endif
> > +#define __alloc_size(x, ...)   __alloc_size__(x, ## __VA_ARGS__) __malloc
> > +#define __realloc_size(x, ...) __alloc_size__(x, ## __VA_ARGS__)
> 
> These look unconditional now, so we could move it to
> `compiler_attributes.h` in a later patch (or an independent series).

I wasn't sure if this "composite macro" was sane there, especially since
it would be using __malloc before it was defined, etc. Would you prefer
I move it?

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
