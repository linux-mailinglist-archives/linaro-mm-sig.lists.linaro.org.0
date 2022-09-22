Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 371865E67EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 18:00:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C0BB3F619
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 16:00:39 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id C91C43F60D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 16:00:29 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id t3so9205636ply.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 09:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=e+3VYhs+DuwH7bu+QHtV1rjWq3mJNnHisCvMMFS3bAw=;
        b=XxhEWZKeaIg8g+YPuHc57mvNIPPhpigg738nM9wsLJjiUYpKwjJNzBKKGjefZOhAzi
         0KqHQ1P/cHiMmQgsO3z2jt2+D0oCcG8Ck+pj5sopXZOTE33QKhSQ8Lb6DWDYvG77ZJIc
         GQLx6jVnYAJuMY3HV3uGUN51p3PNgpWkx9A1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=e+3VYhs+DuwH7bu+QHtV1rjWq3mJNnHisCvMMFS3bAw=;
        b=0LYABxqY2Z2/2dpwdv2m5XNrwcJkNxEk2EVSCpx8WvPj1+W4BHIDWpb1kEHhvLRi98
         EcrjAd+14503NeBeTRHr/rVW0mlvFkqfQ6XILBlpcVQ6jLYWYuFKgE1msauHrn+pUDXJ
         oXTPUEVHmMVJxH8xvr3lZ03+1+PQUvuSMDkEXnQ3ZI5GkH2GKPIcK7i8sZFH143cYAqA
         70sU6j8IB27ucS32YeyqF2wavWyzN5Fb5cB4Zf+teZmaJlu7p76GRRbH2Kva/6XM9Wh6
         Wuddq7miO12nGgumPVVNpKMZ3ZpgG61a3IcQ+u38Q0xBuArdRQqZZFE8qtFLl9iDtsd/
         2UMQ==
X-Gm-Message-State: ACrzQf2xEtGAHcpEXRRmK4V+iFsYsGHn9iVxasYVfdRXNAce9lIryb/v
	r+zuzRop1BMCmWeBpjAFCVqqIQ==
X-Google-Smtp-Source: AMsMyM6q4mhFYq39gGoVyx6Hnh47y8QFV1PKitfWXVTUQGpGwPy/JbIncPBlq3WqciXD78b9y3HP3A==
X-Received: by 2002:a17:90b:164d:b0:202:69b3:1002 with SMTP id il13-20020a17090b164d00b0020269b31002mr4362502pjb.86.1663862428935;
        Thu, 22 Sep 2022 09:00:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ms3-20020a17090b234300b002005c3d4d4fsm4007085pjb.19.2022.09.22.09.00.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 09:00:28 -0700 (PDT)
Date: Thu, 22 Sep 2022 09:00:26 -0700
From: Kees Cook <keescook@chromium.org>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <202209220859.DA21F91EAE@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-8-keescook@chromium.org>
 <DM5PR11MB13241226F3AACC81398F7E8EC14E9@DM5PR11MB1324.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR11MB13241226F3AACC81398F7E8EC14E9@DM5PR11MB1324.namprd11.prod.outlook.com>
Message-ID-Hash: YW2QR6LBTCA25NNUTXP6FPZ6B3IDBI46
X-Message-ID-Hash: YW2QR6LBTCA25NNUTXP6FPZ6B3IDBI46
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vlastimil Babka <vbabka@suse.cz>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Feng Tang <feng.tang@intel.com>, "llvm@lists.linux.dev" <llvm@lists.linux.dev>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, Eric Dumazet <edumazet@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "dev@openvswitch.org" <dev@openvswitch.org>, "x86@kernel.org" <x86@kernel.org>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-
 sig@lists.linaro.org>, Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/12] igb: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YW2QR6LBTCA25NNUTXP6FPZ6B3IDBI46/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Sep 22, 2022 at 03:56:54PM +0000, Ruhl, Michael J wrote:
> >From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of Kees Cook
> [...]
> >diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> >b/drivers/net/ethernet/intel/igb/igb_main.c
> >index 2796e81d2726..4d70ee5b0f79 100644
> >--- a/drivers/net/ethernet/intel/igb/igb_main.c
> >+++ b/drivers/net/ethernet/intel/igb/igb_main.c
> >@@ -1196,6 +1196,7 @@ static int igb_alloc_q_vector(struct igb_adapter
> >*adapter,
> >
> > 	ring_count = txr_count + rxr_count;
> > 	size = struct_size(q_vector, ring, ring_count);
> >+	size = kmalloc_size_roundup(size);
> 
> why not:
> 
> 	size = kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));
> 
> ?

Sure! I though it might be more readable split up. I will change it. :)

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
