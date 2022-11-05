Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B69CD6217F9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Nov 2022 16:21:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70EF63F5E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Nov 2022 15:21:47 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 6671F3EC30
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 21:03:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=zx2c4.com header.s=20210105 header.b="Ek158U/I";
	spf=pass (lists.linaro.org: domain of "SRS0=HBtZ=3F=zx2c4.com=Jason@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=HBtZ=3F=zx2c4.com=Jason@kernel.org";
	dmarc=pass (policy=quarantine) header.from=zx2c4.com
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5B12CB808C4;
	Sat,  5 Nov 2022 21:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69FADC433D6;
	Sat,  5 Nov 2022 21:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1667682204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eqdLYS8BDcnZ1CTVSLTL2V9mpBrsInljjeWX569KabI=;
	b=Ek158U/IwAdzp/7JgxH8/niYIDD2c7iDpM/q00frrsf+kptgL3uCiSQ7Xlb7SIQ9YvTtg5
	hlBVvQrg9GahoQxIsHXxgh/CGzM4sTACdo/WX2PYJwuZbLx0SZ+njeVN3snq9LgpG5MQMr
	EBxmnADIwq+lyFhZU+rPI7l5k3bHDuo=
Received: 
	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id f7ca4808 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sat, 5 Nov 2022 21:03:23 +0000 (UTC)
Date: Sat, 5 Nov 2022 22:03:18 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <Y2bPlllkHo5DUmLY@zx2c4.com>
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105123642.596371c7@rorschach.local.home>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: 6671F3EC30
X-Spamd-Result: default: False [-9.70 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[zx2c4.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zx2c4.com,quarantine];
	FORGED_SENDER(0.30)[Jason@zx2c4.com,SRS0=HBtZ=3F=zx2c4.com=Jason@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[zx2c4.com:s=20210105];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[44];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[zx2c4.com:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Jason@zx2c4.com,SRS0=HBtZ=3F=zx2c4.com=Jason@kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: SRS0=HBtZ=3F=zx2c4.com=Jason@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DNGD3OAOINQUG7WLJ7Y7F4XT2BYWSCCF
X-Message-ID-Hash: DNGD3OAOINQUG7WLJ7Y7F4XT2BYWSCCF
X-Mailman-Approved-At: Tue, 08 Nov 2022 15:21:32 +0000
CC: Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-
 scsi@vger.kernel.org, linux-staging@lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 00/38] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DNGD3OAOINQUG7WLJ7Y7F4XT2BYWSCCF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Nov 05, 2022 at 12:36:42PM -0400, Steven Rostedt wrote:
> ----------------------8<------------------------
> @@
> identifier ptr, timer, rfield, slab;
> @@
> (
> -	del_timer(&ptr->timer);
> +	timer_shutdown(&ptr->timer);
> |
> -	del_timer_sync(&ptr->timer);
> +	timer_shutdown_sync(&ptr->timer);
> )
>     ...
> (
> 	kfree_rcu(ptr, rfield);
> |
> 	kmem_cache_free(slab, ptr);
> |
> 	kfree(ptr);
> )
> ---------------------->8------------------------

Something that might help here is changing the `...` into
`... when exists` or into `... when != ptr` or similar.
See this section of the manual:
https://coccinelle.gitlabpages.inria.fr/website/docs/main_grammar004.html

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
