Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7179A61A0DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 20:22:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 821C63F5C8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 19:22:54 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by lists.linaro.org (Postfix) with ESMTPS id A72C83ECE1
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 19:22:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=f7SabvhE;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 209.85.167.182 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-oi1-f182.google.com with SMTP id l127so6155624oia.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 12:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=;
        b=f7SabvhELt4tvu58wD/HGUQtx2q3c42bp4689l/poRMwjHONs2y+uJybLQ6btnBic8
         iSYK/T680hWQ8YubanyiQ/jk4TxtOOSgyzZyzTjBStaumbjkRAc3PTfrEP9z1ET4ppjL
         os0cjm+F8kyIi27l3gX1TCu+EYDnb6I6sC6rEheSVAEJvEJuF1rkSUHHVYhQ9PjtWNZC
         /KoHUhscmHo/jN1PCMTUxC8NT4KR3QukfsWt+gbIkumzBVh1p3Sny9bKzJeet5110tpk
         HzVFo5k5iKj3j88DvNf1ucVPdH/av+bU0vEDu76g9bGVlHfWhJDUhqHlYTifQBH3QuBi
         oWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=;
        b=6hx3fSM+eiWwcPMpWCpsZST/RaptQlQE3NkiAmGuUPzHESHZWgDYhM23mzjLy9r1Cn
         wW1s78YOkfNNur6ihrN1zU4o/VQ8sEHKq74qrRQ2qZ/0A2CUWbbr1MnpYV5gP05B5A+B
         SSTey7j6CHrkZsX5U2sgr9butPmxKeg1bmBGKdpOUwy/p5LJSP2kJRIkwmq0EtJ91DWa
         YhjvjxDmtZXL9SbVt1Xq/aXhPdDtXi5A50dFbW48olTmD/XqXOCAZmoBMBS4wULio4Lc
         A3SrrxSaVyMD2Wzrdj3FXthei/kFhYXxQyft0PqiemCNns7prMOULopCXLTNgA75Trea
         pSYw==
X-Gm-Message-State: ACrzQf3Mff3Qc3J+SGrmOZSByu9+jeVz/gk63le24T1Nn9XrH/Sw5SpF
	uzWz+cBg5yzAlAx6kTvUFPU=
X-Google-Smtp-Source: AMsMyM5j57nGJ6ihP9Jnolnn5vAnBZp3njFzbqkVuO45h5Gs91zBtM7qMBV3ZTA/jEfxwCmFGOBzYQ==
X-Received: by 2002:aca:2819:0:b0:359:f8a7:c88 with SMTP id 25-20020aca2819000000b00359f8a70c88mr260428oix.278.1667589755023;
        Fri, 04 Nov 2022 12:22:35 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id n132-20020acabd8a000000b003547a3401e6sm1729901oif.43.2022.11.04.12.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 12:22:34 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 4 Nov 2022 12:22:32 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104192232.GA2520396@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104054053.431922658@goodmis.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: A72C83ECE1
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[linux@roeck-us.net,groeck7@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-oi1-f182.google.com:helo,mail-oi1-f182.google.com:rdns];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCPT_COUNT_TWELVE(0.00)[43];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,groeck7@gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:1700:e321:62f0:329c:23ff:fee3:9d7c:received];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.182:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: WOY5VHAHTNZQDH2IW4JZZESTHJ2RISMM
X-Message-ID-Hash: WOY5VHAHTNZQDH2IW4JZZESTHJ2RISMM
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@
 lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 00/33] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOY5VHAHTNZQDH2IW4JZZESTHJ2RISMM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 04, 2022 at 01:40:53AM -0400, Steven Rostedt wrote:
> 
> Back in April, I posted an RFC patch set to help mitigate a common issue
> where a timer gets armed just before it is freed, and when the timer
> goes off, it crashes in the timer code without any evidence of who the
> culprit was. I got side tracked and never finished up on that patch set.
> Since this type of crash is still our #1 crash we are seeing in the field,
> it has become a priority again to finish it.
> 
> This is v3 of that patch set. Thomas Gleixner posted an untested version
> that makes timer->function NULL as the flag that it is shutdown. I took that
> code, tested it (fixed it up), added more comments, and changed the
> name to timer_shutdown_sync(). I also converted it to use WARN_ON_ONCE()
> instead of just WARN_ON() as Linus asked for.
> 

Unfortunately the renaming caused some symbol conflicts.

Global definition: timer_shutdown

  File             Line
0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)

Guenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
