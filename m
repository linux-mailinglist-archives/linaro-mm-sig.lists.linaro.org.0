Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5B061A299
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 21:43:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 280A03F5C7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 20:43:11 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lists.linaro.org (Postfix) with ESMTPS id C6E7D3EBC8
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 20:42:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=lSF8e6DL;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-oi1-f179.google.com with SMTP id s206so6388129oie.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 13:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
        b=lSF8e6DLqbKKv+/YhmRhAK/T1efgb2O636TOXNjLfcC0viXP62NhHdxomxLJWtIe7d
         2JndYje5nsRNFlqIXElcBPkKCNEcFme9PlK3C7Q1VMpYaqUkgV/gQHQcIxtcw2fILMZW
         OKJ4E8wSXhLBL3J9S3NnNPs9rdwe6KKkDhBPqcY/XDJgpqSUigUMcqCvapDa55nrN05q
         GmtiLLrP+Y0lcIHCsefgW4EhiR9DSJnDXwmLBbW8A31Y89yswej4P9L3XtJNKO8bMaw7
         4czQwKTd2lx34+qzGmcV/Exm8IIRhuHeavJKESaaJd5m9cQQb9K2fLTxromO6yhuwk2D
         Ci4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
        b=ldsa/OZIuBIoByQXH37PfFg1htViup2+nH2vw7VpM0erRDf39AVFArt5b9DZwjpdez
         CiXQCs0cO7IIsoELAuHoWhtsEon3csCCJBpcOud8W/pZqBjrW0exo+KO2ea412pPT2vX
         +rsQlfoQspuA+yGHhrBRy8je4ZMg9H0dm6qUGnnsvXXzsy7xWvB+Gf+u1N2eq6HRB7yS
         SBm62vI9w7IyATeRAJA33Ic9PRd5TS/4Fb0uoe0cQ06o8UKGT3dN9u7De6Hg6Ope+r+w
         eHJC9jg9lDag/+ZqU8Ra4e7JhTfHt0alodoNaT2BVRBL7fXcDkfLK5Kh/qffCqzmte6P
         CQcA==
X-Gm-Message-State: ACrzQf2FVxL2pKd2tZ+R9DFdoha4qG+PbWNU0En6oGhChubndvG0iZDB
	1AlgTUCmLwGJCDk7qFTdhW4=
X-Google-Smtp-Source: AMsMyM6uhfbCXJb2q3AkwRuMO9Mjf9xHTKiSSXkljdTFDkgQ9gIWK1vZZlSecO9utfeB4MFPxnhffw==
X-Received: by 2002:a54:4587:0:b0:359:c737:b2e8 with SMTP id z7-20020a544587000000b00359c737b2e8mr20212921oib.234.1667594573223;
        Fri, 04 Nov 2022 13:42:53 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id f1-20020a056830204100b006619483182csm162608otp.18.2022.11.04.13.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 13:42:52 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 4 Nov 2022 13:42:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104204251.GB506794@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
 <20221104154355.578ab689@rorschach.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104154355.578ab689@rorschach.local.home>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: C6E7D3EBC8
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[linux@roeck-us.net,groeck7@gmail.com];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DMARC_NA(0.00)[roeck-us.net];
	NEURAL_HAM(-0.00)[-0.997];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email,mail-oi1-f179.google.com:helo,mail-oi1-f179.google.com:rdns];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.179:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,groeck7@gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: M2H6KXZ5HCK5OA4A5KJUIGADXFA744JO
X-Message-ID-Hash: M2H6KXZ5HCK5OA4A5KJUIGADXFA744JO
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@
 lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 00/33] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M2H6KXZ5HCK5OA4A5KJUIGADXFA744JO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 04, 2022 at 04:38:34PM -0400, Steven Rostedt wrote:
> On Fri, 4 Nov 2022 15:42:09 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
[ ... ]
> 
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
> 
> I won't touch structure fields though.
> 

Agreed, same here.

Guenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
