Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1695452E682
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 09:47:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38809410A7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 07:47:32 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by lists.linaro.org (Postfix) with ESMTPS id E4A1E4016D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 May 2022 07:47:27 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id n18so6734412plg.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 20 May 2022 00:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=56ihVfI55g+5kWoCWi0j9KBKpP7u+QiASGOdishgsYU=;
        b=fI4qwgrFQO4hVvdc3SUyQ8Cdgd+sywkDfLxoX5FB2E66Rov05yQTZSVOzP7gpoXEQF
         0elvCO46fIFZh0PGVYSb0zBP9E8rthiYU1kAunjlGADxZHVDIzKAD9lkoRKg2HXJ1W5y
         hXlwhv/t9DEN5z9vOFJjkOJHZlgbiKv1kt3tICg8ZW4m3WO5jv6iWCSmP7K1aB7qLYm4
         VMIP2whsDbn6dmzkcOergoPPDPGfcjXLPaXh/y5sNGVVKXZAO8zLhLtKDQfFcopimuD1
         iFzKXGu0GYsL7i2AAdYko6ymJb3ROx8/6svDCApNBiO36LmQDMIJe2JZDgJ2TmbOdK9q
         Eg8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=56ihVfI55g+5kWoCWi0j9KBKpP7u+QiASGOdishgsYU=;
        b=AJ11mGE3KNwS0iQu+0qCYLO9Qk6Fxy1AdGt/fyUUX2W0bdsjjpShk1kbiqeOC1kp7E
         HfQkBlcjsBUNsaZr//0pyN4Nt03Am1L0xicLlJ35/hBzRYa83tSQao9ynAacA+GCuHnc
         khBBIN3TduzazMj48gz3SXpmjT5ahiIXI/4nrBGkmw1vkCMii6dv6rgNWlhBpOg8VwyM
         SI7m4/wqeTosK5MShmeKMsEwGBQae8UgrWTHd6XcbtYQUJdCwFRB4UZw4+RhPpGB+50x
         McK3kp/eBcBK1WpbvACaA/9Du4u42zYCKLJCv7vROTU5Wja7SuLdBzFKNunHiuTYmZ8h
         VS0Q==
X-Gm-Message-State: AOAM533/1w051p697CJqe5NQmwLpNx25Gtt/RNF1mRL2AwzUXL5FPN0b
	j60cCfJ3fGg76LfD2ILCmsk=
X-Google-Smtp-Source: ABdhPJzWP/OizPFgR9KmuaPsRGfMHikuqC99X6s0BZZQYR12Xiw5I0XneB0xM48YDFHIVgUBpKEfiw==
X-Received: by 2002:a17:90a:760d:b0:1df:6423:d0b9 with SMTP id s13-20020a17090a760d00b001df6423d0b9mr10201911pjk.33.1653032846949;
        Fri, 20 May 2022 00:47:26 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::4:1761])
        by smtp.gmail.com with ESMTPSA id v12-20020a17090331cc00b0015e8d4eb1ebsm4949822ple.53.2022.05.20.00.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 00:47:26 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 19 May 2022 21:47:25 -1000
From: Tejun Heo <tj@kernel.org>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <YodHjYlMx1XGtM2+@slm.duckdns.org>
References: <20220510235653.933868-1-tjmercier@google.com>
 <3365cd1d750e84fedc8e75d646a77ffd85619d35.camel@ndufresne.ca>
 <CABdmKX3ZV6-u-oLvW_wWavAMBfrsZ=C_rCgK_Uz4VjxcRvRFew@mail.gmail.com>
 <81026ef07c1ce20f8673b75b17bab79a2b39c548.camel@ndufresne.ca>
 <CABdmKX2LxZ6zZR=fhXfnuWCB2BR+gzDd1-t1DD2A2XP24wvuGQ@mail.gmail.com>
 <Yn6DpUsoSz1/15Kc@slm.duckdns.org>
 <CABdmKX1xvm87WMEDkMc9Aye46E4zv1-scenwgaRxHesrOCsaYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX1xvm87WMEDkMc9Aye46E4zv1-scenwgaRxHesrOCsaYg@mail.gmail.com>
Message-ID-Hash: 6PXIIVT5PYOLE5SEYYXZN2WRLMKHZCGS
X-Message-ID-Hash: 6PXIIVT5PYOLE5SEYYXZN2WRLMKHZCGS
X-MailFrom: htejun@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Shuah Khan <shuah@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, John Stultz <jstultz@google.com>, Carlos Llamas <cmllamas@google.com>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, Michal =?iso-8859-1?Q?
 Koutn=FD?= <mkoutny@suse.com>, Shuah Khan <skhan@linuxfoundation.org>, kernel-team@android.com, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/6] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6PXIIVT5PYOLE5SEYYXZN2WRLMKHZCGS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

On Tue, May 17, 2022 at 04:30:29PM -0700, T.J. Mercier wrote:
> Thanks for your suggestion. This almost works. "dmabuf" as a key could
> work, but I'd actually like to account for each heap. Since heaps can
> be dynamically added, I can't accommodate every potential heap name by
> hardcoding registrations in the misc controller.

On its own, that's a pretty weak reason to be adding a separate gpu
controller especially given that it doesn't really seem to be one with
proper abstractions for gpu resources. We don't want to keep adding random
keys to misc controller but can definitely add limited flexibility. What
kind of keys do you need?

Thanks.

-- 
tejun
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
