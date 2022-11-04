Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A3061A165
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 20:42:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D93943F5C8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 19:42:32 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id E1F163EC14
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 19:42:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 02FAFB82DCA;
	Fri,  4 Nov 2022 19:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32A74C433D6;
	Fri,  4 Nov 2022 19:42:11 +0000 (UTC)
Date: Fri, 4 Nov 2022 15:42:09 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20221104154209.21b26782@rorschach.local.home>
In-Reply-To: <20221104192232.GA2520396@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
	<20221104192232.GA2520396@roeck-us.net>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: E1F163EC14
X-Spamd-Result: default: False [-5.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[Cc8=3E=goodmis.org=rostedt];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=@kernel.org]
Message-ID-Hash: TRAKJGMAGUGLBBWBY4W73F24OWNZ7NXK
X-Message-ID-Hash: TRAKJGMAGUGLBBWBY4W73F24OWNZ7NXK
X-MailFrom: SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@
 lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 00/33] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRAKJGMAGUGLBBWBY4W73F24OWNZ7NXK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 4 Nov 2022 12:22:32 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> Unfortunately the renaming caused some symbol conflicts.
> 
> Global definition: timer_shutdown
> 
>   File             Line
> 0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
> 1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
> 2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
> 3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
> 4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)

$ git grep '\btimer_shutdown'
arch/arm/mach-spear/time.c:static inline void timer_shutdown(struct clock_event_device *evt)
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
drivers/clocksource/arm_arch_timer.c:static __always_inline int timer_shutdown(const int access,
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_VIRT_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_PHYS_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_VIRT_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_PHYS_ACCESS, clk);
drivers/clocksource/timer-fttmr010.c:   int (*timer_shutdown)(struct clock_event_device *evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
drivers/clocksource/timer-sp804.c:static inline void timer_shutdown(struct clock_event_device *evt)
drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);
drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);

Honestly, I think these need to be renamed, as "timer_shutdown()"
should be specific to the timer code, and not individual timers.

I'll start making a patch set that starts by renaming these timers,
then adds the timer_shutdown() API, and finished with the trivial
updates, and that will be a real "PATCH" (non RFC).

Linus, should I also add any patches that has already been acked by the
respective maintainer?

-- Steve
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
