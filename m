Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E310E4F7B72
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:19:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1813A402AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:19:40 +0000 (UTC)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	by lists.linaro.org (Postfix) with ESMTPS id B831D3EA4E
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 09:19:35 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id ot30so9444822ejb.12
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 02:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=tl9nBOnLqqP1/acS+yYHjDz2pgRvrY9cqBHbFKj8Fnc=;
        b=CBDEbkCCAkqWcu7rwSRxHuzvDQzAI6q2gOWepIQXIDBbJj5cPNZbu6U8yOAL3lfJYR
         xhKFp5hUopFdDtyiwJfVkQdRMsq1huLcJV7GkTRXOLg8M8+oumKCgOrVEZHJFOeZaqug
         QaS7Fun7MTS/4JRgL7uvADTsO+5Y9rvnLTgKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=tl9nBOnLqqP1/acS+yYHjDz2pgRvrY9cqBHbFKj8Fnc=;
        b=C8AzkHhmE/Qj2mQtSKMLW4qfqNQQAG3kvt+b/Q5upeTgr+BRHmBcwVfx3tq6YcY6wO
         reM0S/lDjrQo50R6WTTlGc5CiIj4b4Pts3Ts4g14iVfGNrpZzMbFm59y97TeZqbnrpKx
         i45ro8kDGXGpDXOMSZ6RLLhr7lLDtAu18POd9Hv4VJ5p7jc8mUFYlEe/x4oEeVDEbNev
         COhUNyZYa92MY1VVHbXn3wmQbFYZbmjiYfn3XppK+3Nuf4V0EiuHaxJMnm8/+YPdezbu
         2nFWrIzqzWbL+6B9R/PW9P3V8xurY04OWvANCm2fZTfum5tuqL/vmDhfuoamchr2YSYz
         n9dg==
X-Gm-Message-State: AOAM531jK3hDoNUdVdmcOYV34yVFKV2sogGnLIA0ySGvlLTVkx6ki8fQ
	IT8QNfStruH9+z1rrNX+xiIysg==
X-Google-Smtp-Source: ABdhPJzUgJqDlmh4A5Ht8QOIfc1rzltJqxuNxKdfx/yt4VDI386e+Hs+rpvAXO7SRwNbW/OkTGfw7g==
X-Received: by 2002:a17:907:6e16:b0:6e4:de0d:d93 with SMTP id sd22-20020a1709076e1600b006e4de0d0d93mr12253676ejc.29.1649323174807;
        Thu, 07 Apr 2022 02:19:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id r19-20020a17090638d300b006d6e4fc047bsm7585498ejd.11.2022.04.07.02.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 02:19:34 -0700 (PDT)
Date: Thu, 7 Apr 2022 11:19:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yk6spNv/zSCB2ewe@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
	linux-kernel@vger.kernel.org
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-16-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407085946.744568-16-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: GOCCRSUEKM7XXJ4TCEZA3SGNBI3RLWE2
X-Message-ID-Hash: GOCCRSUEKM7XXJ4TCEZA3SGNBI3RLWE2
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15/15] seqlock: drop seqcount_ww_mutex_t
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GOCCRSUEKM7XXJ4TCEZA3SGNBI3RLWE2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 07, 2022 at 10:59:46AM +0200, Christian K=F6nig wrote:
> Daniel pointed out that this series removes the last user of
> seqcount_ww_mutex_t, so let's drop this.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Waiman Long <longman@redhat.com>
> Cc: Boqun Feng <boqun.feng@gmail.com>
> Cc: linux-kernel@vger.kernel.org

Yeah I don't think we'll ever need this again, ww_mutex aren't common and
the ww_mutex+seqlock thing wasn't the brighest idea.

Peter/Ingo, assuming you agree, can you ack this for merging through
drm-misc, or want to pick this up later on when the last user disappeared
in Linus' tree?

Cheers, Daniel

> ---
>  include/linux/seqlock.h | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/include/linux/seqlock.h b/include/linux/seqlock.h
> index 37ded6b8fee6..3926e9027947 100644
> --- a/include/linux/seqlock.h
> +++ b/include/linux/seqlock.h
> @@ -17,7 +17,6 @@
>  #include <linux/kcsan-checks.h>
>  #include <linux/lockdep.h>
>  #include <linux/mutex.h>
> -#include <linux/ww_mutex.h>
>  #include <linux/preempt.h>
>  #include <linux/spinlock.h>
> =20
> @@ -164,7 +163,7 @@ static inline void seqcount_lockdep_reader_access(con=
st seqcount_t *s)
>   * static initializer or init function. This enables lockdep to validate
>   * that the write side critical section is properly serialized.
>   *
> - * LOCKNAME:	raw_spinlock, spinlock, rwlock, mutex, or ww_mutex.
> + * LOCKNAME:	raw_spinlock, spinlock, rwlock or mutex
>   */
> =20
>  /*
> @@ -184,7 +183,6 @@ static inline void seqcount_lockdep_reader_access(con=
st seqcount_t *s)
>  #define seqcount_spinlock_init(s, lock)		seqcount_LOCKNAME_init(s, lock,=
 spinlock)
>  #define seqcount_rwlock_init(s, lock)		seqcount_LOCKNAME_init(s, lock, r=
wlock)
>  #define seqcount_mutex_init(s, lock)		seqcount_LOCKNAME_init(s, lock, mu=
tex)
> -#define seqcount_ww_mutex_init(s, lock)		seqcount_LOCKNAME_init(s, lock,=
 ww_mutex)
> =20
>  /*
>   * SEQCOUNT_LOCKNAME()	- Instantiate seqcount_LOCKNAME_t and helpers
> @@ -277,7 +275,6 @@ SEQCOUNT_LOCKNAME(raw_spinlock, raw_spinlock_t,  fals=
e,    s->lock,        raw_s
>  SEQCOUNT_LOCKNAME(spinlock,     spinlock_t,      __SEQ_RT, s->lock,     =
   spin,     spin_lock(s->lock))
>  SEQCOUNT_LOCKNAME(rwlock,       rwlock_t,        __SEQ_RT, s->lock,     =
   read,     read_lock(s->lock))
>  SEQCOUNT_LOCKNAME(mutex,        struct mutex,    true,     s->lock,     =
   mutex,    mutex_lock(s->lock))
> -SEQCOUNT_LOCKNAME(ww_mutex,     struct ww_mutex, true,     &s->lock->bas=
e, ww_mutex, ww_mutex_lock(s->lock, NULL))
> =20
>  /*
>   * SEQCNT_LOCKNAME_ZERO - static initializer for seqcount_LOCKNAME_t
> @@ -304,8 +301,7 @@ SEQCOUNT_LOCKNAME(ww_mutex,     struct ww_mutex, true=
,     &s->lock->base, ww_mu
>  	__seqprop_case((s),	raw_spinlock,	prop),			\
>  	__seqprop_case((s),	spinlock,	prop),			\
>  	__seqprop_case((s),	rwlock,		prop),			\
> -	__seqprop_case((s),	mutex,		prop),			\
> -	__seqprop_case((s),	ww_mutex,	prop))
> +	__seqprop_case((s),	mutex,		prop))
> =20
>  #define seqprop_ptr(s)			__seqprop(s, ptr)
>  #define seqprop_sequence(s)		__seqprop(s, sequence)
> --=20
> 2.25.1
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
