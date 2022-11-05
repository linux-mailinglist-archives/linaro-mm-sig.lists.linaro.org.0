Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6579A61DCD3
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 18:54:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FE0D3F5D5
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 17:53:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 8C2C63EC30
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 17:53:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=G+DL=3F=goodmis.org=rostedt@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=G+DL=3F=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2EC1560B2A;
	Sat,  5 Nov 2022 17:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 199F5C433D6;
	Sat,  5 Nov 2022 17:53:40 +0000 (UTC)
Date: Sat, 5 Nov 2022 13:53:38 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20221105135338.14309ea1@rorschach.local.home>
In-Reply-To: <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
References: <20221105060024.598488967@goodmis.org>
	<CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 8C2C63EC30
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=G@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[DL=3F=goodmis.org=rostedt];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=G@kernel.org]
Message-ID-Hash: GQ7L76RRJCI73SDKNQFEY2IJR547SFWP
X-Message-ID-Hash: GQ7L76RRJCI73SDKNQFEY2IJR547SFWP
X-MailFrom: SRS0=G+DL=3F=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.
 dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 00/38] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQ7L76RRJCI73SDKNQFEY2IJR547SFWP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, 5 Nov 2022 08:59:36 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> Others in the series were *definitely* not scripted, doing clearly
> manual cleanups:
> 
> -    if (dch->timer.function) {
> -        del_timer(&dch->timer);
> -        dch->timer.function = NULL;
> -    }
> +    timer_shutdown(&dch->timer);
> 
> so no, this does *not* make me feel "ok, this is all trivial".

I just ran the script and the above code turned to:

diff --git a/drivers/isdn/hardware/mISDN/hfcmulti.c b/drivers/isdn/hardware/mISDN/hfcmulti.c
index 4f7eaa17fb27..2695bbde52db 100644
--- a/drivers/isdn/hardware/mISDN/hfcmulti.c
+++ b/drivers/isdn/hardware/mISDN/hfcmulti.c
@@ -4544,7 +4544,7 @@ release_port(struct hfc_multi *hc, struct dchannel *dch)
        spin_lock_irqsave(&hc->lock, flags);
 
        if (dch->timer.function) {
-               del_timer(&dch->timer);
+               timer_shutdown(&dch->timer);
                dch->timer.function = NULL;
        }
 
Which is silly. Because timer_shutdown() makes timer.function = NULL.

That's why I changed it. And it really shouldn't be touching
timer.function anyway.

-- Steve
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
