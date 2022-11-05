Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8FC61DEF9
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 22:48:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57D723F5C8
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 21:48:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 901013EC14
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 21:48:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=G+DL=3F=goodmis.org=rostedt@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=G+DL=3F=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 383BD60B9E;
	Sat,  5 Nov 2022 21:48:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37383C433D6;
	Sat,  5 Nov 2022 21:47:58 +0000 (UTC)
Date: Sat, 5 Nov 2022 17:47:56 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20221105174756.38062fce@rorschach.local.home>
In-Reply-To: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
References: <20221105060024.598488967@goodmis.org>
	<CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
	<20221105123642.596371c7@rorschach.local.home>
	<Y2bPlllkHo5DUmLY@zx2c4.com>
	<CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 901013EC14
X-Spamd-Result: default: False [-5.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=G@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	R_DKIM_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[44];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[DL=3F=goodmis.org=rostedt];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=G@kernel.org];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	ARC_NA(0.00)[]
Message-ID-Hash: TGNHWSL7OSEB3AQRNS22JSBGZKK25TSA
X-Message-ID-Hash: TGNHWSL7OSEB3AQRNS22JSBGZKK25TSA
X-MailFrom: SRS0=G+DL=3F=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Jason A. Donenfeld" <Jason@zx2c4.com>, linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vge
 r.kernel.org, linux-staging@lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 00/38] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TGNHWSL7OSEB3AQRNS22JSBGZKK25TSA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, 5 Nov 2022 14:13:14 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> (Comparing output is also fun because the ordering of the patches is
> random, so consecutive runs with the same rule will give different
> patches. I assume that it's just because it's done in parallel, but it
> doesn't help the "try to see what changes when you change the script"
> ;)

What I do to compare is:

 patch -p1 < cocci1.patch
 git commit -a
 git show | patch -p1 -R
 patch -p1 < cocci2.patch
 git diff

Then I see how things changed. This is how I was able to show you the
tweaks I made.

-- Steve
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
