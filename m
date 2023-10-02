Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDA17B5536
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 16:32:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6BA740D3C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 14:32:56 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id A6FEF3E9FC
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Oct 2023 14:32:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=OK5OobfE;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=xn7mU0O8AywxfzFuGVmvml/wEV+n9HbyxBG52KH4Jls=; b=OK5OobfEO9IkO7vYm+2tBaPoOQ
	I3+u7tkrIuhJWRf+G8nxoJ5B7rAN4dKUKvYQVJJAEIyMYOvRJ/VDsOepxi2ABVPnTQTJ+ZW943QGT
	ArjBQExuTUJAaEuGIyz1s6DZOcLy4oiEwWa18YXy7W5F13d/y/4jF78IbBrpbbvg0LUHxuxV4w7fF
	VtGCf1eQ1ilduhoKehjj/YtBJhcUJe5PG+mQ/nx9VINhzJ22B50vJ5Dtuitd9TTquUV5x0i8AlZ1f
	wxqRgsbtAzZvuaBJjnY8r5zVF/yYW47Re9Ody/bBDl5qwYEfcQ4Dj2uJkLWfgXdWgyLAUfeNMHzSQ
	buUqbQ9w==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qnJyX-009YFL-Pv; Mon, 02 Oct 2023 14:32:45 +0000
Date: Mon, 2 Oct 2023 15:32:45 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Message-ID: <ZRrUjcWqtmzPV3Fs@casper.infradead.org>
References: <13360591.uLZWGnKmhe@natalenko.name>
 <2701570.mvXUDI8C0e@natalenko.name>
 <ZRqeoiZ2ayrAR6AV@debian.me>
 <2300189.ElGaqSPkdT@natalenko.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2300189.ElGaqSPkdT@natalenko.name>
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:20712, ipnet:90.155.0.0/18, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-0.690];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,lists.linaro.org,lists.freedesktop.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,lists.linux.dev,linux-foundation.org,kvack.org];
	DMARC_NA(0.00)[infradead.org];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A6FEF3E9FC
Message-ID-Hash: R4E2ENXWA6IH3662LT5XFKNPLPWZXQBQ
X-Message-ID-Hash: R4E2ENXWA6IH3662LT5XFKNPLPWZXQBQ
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Linux Regressions <regressions@lists.linux.dev>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R4E2ENXWA6IH3662LT5XFKNPLPWZXQBQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 02, 2023 at 01:02:52PM +0200, Oleksandr Natalenko wrote:
> > > > > BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
> > > > > 
> > > > > Corrupted memory at 0x00000000e173a294 [ ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ] (in kfence-#108):
> > > > >  drm_gem_put_pages+0x186/0x250
> > > > >  drm_gem_shmem_put_pages_locked+0x43/0xc0
> > > > >  drm_gem_shmem_object_vunmap+0x83/0xe0
> > > > >  drm_gem_vunmap_unlocked+0x46/0xb0
> > > > >  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
> > > > >  drm_fb_helper_damage_work+0x96/0x170
> 
> Matthew, before I start dancing around, do you think ^^ could have the same cause as 0b62af28f249b9c4036a05acfb053058dc02e2e2 which got fixed by 863a8eb3f27098b42772f668e3977ff4cae10b04?

Yes, entirely plausible.  I think you have two useful points to look at
before delving into a full bisect -- 863a8e and the parent of 0b62af.
If either of them work, I think you have no more work to do.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
