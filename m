Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A9F619DF4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 18:00:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3B1F3F5C2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 17:00:51 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lists.linaro.org (Postfix) with ESMTPS id 091B93EC14
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 17:00:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=TyCMiI4A;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.167.175 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-oi1-f175.google.com with SMTP id m204so5786109oib.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 10:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/jNIi3NLp/0QE0eLEgGhnlZnXslRxZtVSsauwMnJ52A=;
        b=TyCMiI4ARMPxd18RVlEv+qm2LWR7zC104Hlivn40qb5lZJslIeDFuCNMNvjneFE/Nj
         LFwCX5vAwmEX/R8qjGO9x9K9/hgdwoRd2q59WUqMzWoiDvISQjer+tTT1jJ7UfSLA8Vn
         fR3VeAjk206NeR5DC2lSXJH82ZME8JVM9jplc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/jNIi3NLp/0QE0eLEgGhnlZnXslRxZtVSsauwMnJ52A=;
        b=3H/v+9aDOYpKhcvcezn+2/KsbSI9JJd05ScOrDXhyb/x9IrJy4GRI94x0y+b307AFK
         b11iaqgRTGlujA5D5xnc/vfDizXr8eZv77028XGyrRdJnNINxpiZ7JpkULpF1QpBSnoK
         9OSYkb82o1rJEGeSUvk58JXtEYMixUFdlIA3FzDfTnfLoxoXzx52WQJ9WOUeCiWWa/Pa
         i5s7cWW2aNqcB/8z8T1WgHZHXWiJGAK6ZpUuX1UPdUnZ64EBtAF9npN4gRgkrSYfKqXH
         Zip2pRa3jt0SGwSF9+GonKQQiQS2VbdlgyhELt3l97gJcqLN/D5YOBPVOu01yVAICpma
         pUIA==
X-Gm-Message-State: ACrzQf3Kv5v0rK4C77rQKQBGMEl64SLziQ7LiIxrxV7uB3OQoUFUhjQo
	kxyHKgvKEgDZuOwBIavUin4+359BMfsFcw==
X-Google-Smtp-Source: AMsMyM4u+w4lqwZZm1+5rgVvI6up/HrBMiJEQUgvGIDAmK5waSxjihjsc2oMVGiGZinYubWykav5eA==
X-Received: by 2002:a05:6808:1204:b0:345:b8ec:6366 with SMTP id a4-20020a056808120400b00345b8ec6366mr20681993oil.139.1667581233827;
        Fri, 04 Nov 2022 10:00:33 -0700 (PDT)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com. [209.85.210.42])
        by smtp.gmail.com with ESMTPSA id g18-20020a9d6a12000000b00666a5b5d20fsm1614007otn.32.2022.11.04.10.00.30
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 10:00:31 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id d26-20020a05683018fa00b0066ab705617aso2971061otf.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 10:00:30 -0700 (PDT)
X-Received: by 2002:a81:8241:0:b0:370:5fad:47f0 with SMTP id
 s62-20020a818241000000b003705fad47f0mr27409344ywf.441.1667581219811; Fri, 04
 Nov 2022 10:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20221104054053.431922658@goodmis.org>
In-Reply-To: <20221104054053.431922658@goodmis.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 4 Nov 2022 10:00:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=whKE5UL+AuCC2wK8oq8D_ueSO_T7-9Acx4POouqVi8ZHg@mail.gmail.com>
Message-ID: <CAHk-=whKE5UL+AuCC2wK8oq8D_ueSO_T7-9Acx4POouqVi8ZHg@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 091B93EC14
X-Spamd-Result: default: False [-5.65 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.95)[99.77%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-oi1-f175.google.com:helo,mail-oi1-f175.google.com:rdns];
	NEURAL_HAM(-0.00)[-0.994];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.175:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[43];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.210.42:received];
	DMARC_NA(0.00)[linux-foundation.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: EPCQWYAETFMECKWKN26SDSUIGZA4DRWZ
X-Message-ID-Hash: EPCQWYAETFMECKWKN26SDSUIGZA4DRWZ
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.
 dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 00/33] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EPCQWYAETFMECKWKN26SDSUIGZA4DRWZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 3, 2022 at 10:48 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Ideally, I would have the first patch go into this rc cycle, which is mostly
> non functional as it will allow the other patches to come in via the respective
> subsystems in the next merge window.

Ack.

I also wonder if we could do the completely trivially correct
conversions immediately.

I'm talking about the scripted ones where it's currently a
"del_timer_sync()", and the very next action is freeing whatever data
structure the timer is in (possibly with something like free_irq() in
between - my point is that there's an unconditional free that is very
clear and unambiguous), so that there is absolutely no question about
whether they should use "timer_shutdown_sync()" or not.

IOW, things like patches 03, 17 and 31, and at least parts others in
this series.

This series clearly has several much more complex cases that need
actual real code review, and I think it would help to have the
completely unambiguous cases out of the way, just to get rid of noise.

So I'd take that first patch, and a scripted set of "this cannot
change any semantics" patches early.

                Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
