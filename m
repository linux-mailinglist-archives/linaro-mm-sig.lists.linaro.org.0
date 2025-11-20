Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D072C73C5C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 12:38:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37CD03F949
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 11:38:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	by lists.linaro.org (Postfix) with ESMTPS id 9EE203F90A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 11:38:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=desiato.20200630 header.b=no12kTDy;
	spf=none (lists.linaro.org: domain of peterz@infradead.org has no SPF policy when checking 90.155.92.199) smtp.mailfrom=peterz@infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jNLf4kEyrJhIhQxXhV/wDZHhRdsSXxNMp9YKHK4/GJo=; b=no12kTDykFte+1geNs0ouoXEhA
	0KDViRftSYjtcf2o89myhfE6bM/Fgjp3RI6JLzzZiPU0hB1QTZVc/BvwpiKeGwKdjM3Y+6U+frsLO
	Iv96orLFcqKyn5T09CI8EeIsq/+YDQ3KOfiApJfxUME75IYbzUSxLvZMu87NHHwukv0b/F29Cwhv1
	bVlpwkUe5S319+YNzpGbvPY7A19OXBnb2sVdopKcB55I3pZKmKEQ7wuP2ttEc7Ib6AB6LtVVrfDDA
	WbFQEt0nCSywb1K7LSX80KeRM66Ktj2uV6Su/54JCq6sIBNXnh4Qy2pU+Qj9etPIScNe/uXUWMmhp
	rLZhIs0g==;
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM27w-0000000ENxS-33Ll;
	Thu, 20 Nov 2025 10:43:02 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
	id 197173002A6; Thu, 20 Nov 2025 12:38:24 +0100 (CET)
Date: Thu, 20 Nov 2025 12:38:24 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20251120113824.GJ4067720@noisy.programming.kicks-ass.net>
References: <20251120110341.2425-1-thomas.hellstrom@linux.intel.com>
 <20251120110341.2425-2-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251120110341.2425-2-thomas.hellstrom@linux.intel.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=desiato.20200630];
	MIME_GOOD(-0.10)[text/plain];
	DWL_DNSWL_BLOCKED(0.00)[infradead.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,linux.intel.com,redhat.com,kernel.org,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9EE203F90A
X-Spamd-Bar: ---
Message-ID-Hash: VHE6WETPN2JVHXR35TO4VKEX2TAMWWJM
X-Message-ID-Hash: VHE6WETPN2JVHXR35TO4VKEX2TAMWWJM
X-MailFrom: peterz@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-xe@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Waiman Long <longman@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/2] kernel/locking/ww_mutex: Add per-lock lock-check helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VHE6WETPN2JVHXR35TO4VKEX2TAMWWJM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 12:03:40PM +0100, Thomas Hellstr=F6m wrote:
> Code using ww_mutexes typically by design have a number of
> such mutexes sharing the same ww_class, and within a ww transaction
> they are all lockdep annotated using a nest_lock which means
> that multiple ww_mutexes of the same lockdep class may be locked at
> the same time. That means that lock_is_held() returns true and
> lockdep_assert_held() doesn't fire as long as there is a *single*
> ww_mutex held of the same class. IOW within a WW transaction.
>=20
> Code using these mutexes typically want to assert that individual
> ww_mutexes are held. Not that any ww_mutex of the same class is
> held.
>=20
> Introduce functions that can be used for that.
>=20
> RFC: Placement of the functions? lockdep.c? Are the #ifdefs testing for
> the correct config?

Yeah, I think so.

Ack on this.

> Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> ---
>  include/linux/ww_mutex.h | 18 ++++++++++++++++++
>  kernel/locking/mutex.c   | 10 ++++++++++
>  2 files changed, 28 insertions(+)
>=20
> diff --git a/include/linux/ww_mutex.h b/include/linux/ww_mutex.h
> index 45ff6f7a872b..7bc0f533dea6 100644
> --- a/include/linux/ww_mutex.h
> +++ b/include/linux/ww_mutex.h
> @@ -380,4 +380,22 @@ static inline bool ww_mutex_is_locked(struct ww_mute=
x *lock)
>  	return ww_mutex_base_is_locked(&lock->base);
>  }
> =20
> +#ifdef CONFIG_PROVE_LOCKING
> +
> +bool ww_mutex_held(struct ww_mutex *lock);
> +
> +#else /* CONFIG_PROVE_LOCKING */
> +
> +static inline bool ww_mutex_held(struct ww_mutex *lock)
> +{
> +	return true;
> +}
> +
> +#endif /* CONFIG_PROVE_LOCKING */
> +
> +static inline void ww_mutex_assert_held(struct ww_mutex *lock)
> +{
> +	lockdep_assert(ww_mutex_held(lock));
> +}
> +
>  #endif
> diff --git a/kernel/locking/mutex.c b/kernel/locking/mutex.c
> index de7d6702cd96..37868b739efd 100644
> --- a/kernel/locking/mutex.c
> +++ b/kernel/locking/mutex.c
> @@ -1174,3 +1174,13 @@ int atomic_dec_and_mutex_lock(atomic_t *cnt, struc=
t mutex *lock)
>  	return 1;
>  }
>  EXPORT_SYMBOL(atomic_dec_and_mutex_lock);
> +
> +#ifdef CONFIG_PROVE_LOCKING
> +
> +bool ww_mutex_held(struct ww_mutex *lock)
> +{
> +	return __ww_mutex_owner(&lock->base) =3D=3D current;
> +}
> +EXPORT_SYMBOL(ww_mutex_held);
> +
> +#endif /* CONFIG_PROVE_LOCKING */
> --=20
> 2.51.1
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
