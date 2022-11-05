Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CD861DBD5
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 17:00:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFEFF3ECE1
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 16:00:31 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by lists.linaro.org (Postfix) with ESMTPS id 455923ECE1
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 16:00:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=iIDJL03z;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.222.177 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-qk1-f177.google.com with SMTP id k4so4998211qkj.8
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Nov 2022 09:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GP8p4dRzNVpyUotOfaypMmYTGE9lsMcq6qB3gjhmc04=;
        b=iIDJL03zNkH0lS9YORaCB4Nnx18G1RT5PAxkqTBkren7bOYLdVGnhhilx+OlS481lw
         gQr71gF/2R0QtX/qOni1Pt9vrqOkIr43rj0MZrH/uG69dzQgSBZeGC3nRHzTa1HEb5Zv
         OhEAlIPPkZmfK8ER3fSUpMd0BmaBeM97bdw94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GP8p4dRzNVpyUotOfaypMmYTGE9lsMcq6qB3gjhmc04=;
        b=AVNjoUSdHRhvImBvX6YmM+M+QbN2uoYVPGOQm2A8bS4VkM3GzUkmgHkiFzXyb8lFXw
         27IJoewHLSXm+8YPbkrKvXolyVEvAf3tKT9gISL7vNOCFVfPH8Nl8nB+zlD0/0vYHga8
         W8y1M+DvWYrn2Q1muoLbXBa5fYpvxL9CoTFKjnYv/ayjah51ivzKZGreq/HeVqcim9gJ
         OF26ECVilH09hNjYnt6wxblqSEccoqjf+xXYqMbicz7qAo/dsxqvCWoq0GCyPSPFuSPx
         v0Q4eTuC1gGXKTAGzlqwn+8CK0yt03JQzelYyRKCeU8i5lkgs7cXNP9kAz/svVCWSgE/
         WkOA==
X-Gm-Message-State: ACrzQf0JvK3M8dR8mD0wmJIeSnNgRFEgoqzo1H1JE9WCcnwkPBrr2y74
	gLsqSTvlv8+g+2lS+6tMJZFu4GwvkwsN4A==
X-Google-Smtp-Source: AMsMyM6+U4YAb/BjK6y6L6+uvRuADtKbn/7BBpbQbA9XnZOmuIpIILCEFcoxMcOl7u+oQPBzRDPLDQ==
X-Received: by 2002:ae9:e303:0:b0:6fa:35db:65a with SMTP id v3-20020ae9e303000000b006fa35db065amr21953262qkf.373.1667664012608;
        Sat, 05 Nov 2022 09:00:12 -0700 (PDT)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com. [209.85.128.170])
        by smtp.gmail.com with ESMTPSA id y7-20020a05620a25c700b006ee7923c187sm2135431qko.42.2022.11.05.09.00.03
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Nov 2022 09:00:07 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-367cd2807f2so69005477b3.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Nov 2022 09:00:03 -0700 (PDT)
X-Received: by 2002:a81:114e:0:b0:36a:fc80:fa62 with SMTP id
 75-20020a81114e000000b0036afc80fa62mr40431421ywr.58.1667663992806; Sat, 05
 Nov 2022 08:59:52 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org>
In-Reply-To: <20221105060024.598488967@goodmis.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 08:59:36 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
Message-ID: <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 455923ECE1
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[43];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.177:from];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: RRGOGEG7EI557WVFTGM7Y5QGF5LAVIXV
X-Message-ID-Hash: RRGOGEG7EI557WVFTGM7Y5QGF5LAVIXV
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.
 dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 00/38] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RRGOGEG7EI557WVFTGM7Y5QGF5LAVIXV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 4, 2022 at 11:01 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Patch 1 fixes an issue with sunrpc/xprt where it incorrectly uses
> del_singleshot_timer_sync() for something that is not a oneshot timer. As this
> will be converted to shutdown, this needs to be fixed first.

So this is the kind of thing that I would *not* want to get eartly.

I really would want to get just the infrastructure in to let people
start doing conversions.

And then the "mindlessly obvious patches that are done by scripting
and can not possibly matter".

The kinds that do not *need* review, because they are mechanical, and
that just cause pointless noise for the rest of the patches that *do*
want review.

Not this kind of thing that is so subtle that you have to explain it.
That's not a "scripted patch for no semantic change".

So leave the del_singleshot_timer_sync() cases alone, they are
irrelevant for the new infrastructure and for the "mindless scripted
conversion" patches.

> Patches 2-4 changes existing timer_shutdown() functions used locally in ARM and
> some drivers to better namespace names.

Ok, these are relevant.

> Patch 5 implements the new timer_shutdown() and timer_shutdown_sync() functions
> that disable re-arming the timer after they are called.

This is obviously what I'd want early so that people can start doign
this in their trees.

> Patches 6-28 change all the locations where there's a kfree(), kfree_rcu(),
> kmem_cache_free() and one call_rcu() call where the RCU function frees the
> timer (the workqueue patch) in the same function as the del_timer{,_sync}() is
> called on that timer, and there's no extra exit path between the del_timer and
> freeing of the timer.

So honestly, I was literally hoping for a "this is the coccinelle
script" kind of patch.

Now there seems to be a number of patches here that are actualyl
really hard to see that they are "obviously correct" and I can't tell
if they are actually scripted or not.

They don't *look* scripted, but I can't really tell.  I looked at the
patches with ten lines of context, and I didn't see the immediately
following kfree() even in that expanded patch context, so it's fairly
far away.

Others in the series were *definitely* not scripted, doing clearly
manual cleanups:

-    if (dch->timer.function) {
-        del_timer(&dch->timer);
-        dch->timer.function = NULL;
-    }
+    timer_shutdown(&dch->timer);

so no, this does *not* make me feel "ok, this is all trivial".

IOW, I'd really want *just* the infrastructure and *just* the provably
trivial stuff. If it wasn't some scripted really obvious thing that
cannot possibly change anything and that wasn't then edited manually
for some reason, I really don't want it early.

IOW, any early conversions I'd take are literally about removing pure
mindless noise. Not about doing conversions.

And I wouldn't mind it as a single conversion patch that has the
coccinelle script as the explanation.

Really just THAT kind of "100% mindless conversion".

               Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
