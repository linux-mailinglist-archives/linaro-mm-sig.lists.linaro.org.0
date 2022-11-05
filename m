Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDE661DDCC
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 20:31:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 241E33F5C7
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 19:31:50 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by lists.linaro.org (Postfix) with ESMTPS id 0EBAA3F061
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 19:31:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=jURw19XL;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-oi1-f177.google.com with SMTP id p127so8425153oih.9
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Nov 2022 12:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CTlAHc9k7qwIZyOhFoXagieaQq5pwRyAvyi0mAOE5RE=;
        b=jURw19XL/xOvCrYwmv2aWUKdeAoWjP9YO+FTg9LO7kNLGP2qrxnNI/DeaM/hhYlqsP
         YdQYptnzjKsYbbyAKOY5T5QWBhSSLuRj9tx/h3x3Iolz6OENad9xOgpnNTl3bQfF4abr
         IGnRZ+gwoVhjhy8eDyzb76gdYWeTNG8HbYJzf+upnNf3q7GfCqhXHTbMnctQM+lT4ISN
         LgN+zILvYp/x3cxyWSBN67VcIOLSthpIiMe3XVQLxJ5DNQbV3DpA0r2y4Xi6Om/6kI/T
         +bTGJHJtUOpMMkvOkxDlr0Z5JMnZYu43sVpFgzYDCR/HFlqDOFJ8Z5bQFtUlln66Rbqg
         ggdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTlAHc9k7qwIZyOhFoXagieaQq5pwRyAvyi0mAOE5RE=;
        b=qUR3x/OLVjkErwpojJ5q7kpSsaje3w0zjhusFr6WlgwGgv+hKYvxOe4eHxVIMr74Ox
         AI9/5zwnOiPwSW0txmqUjJRlY7pruUiNXU63ppEg/jGvmr58/corwF1mnmt8ZuQ68vuP
         1B59SovgY2qj3BIaCFXvJmJy5KmGscc/UkxUk3meRaIde4cChOwVuYlJDq0WUMPAHgos
         3HX1Uh5/PbeOwGew9TdM9XIqYgEGNE0Pp4Erj2crI9RMrbdLc1V1opb0ZBWIs0FultTx
         0a7xbyYiYAB/gVh7zqu9S0vzCByPoortyoBzMNHIHNNLa/qyOTZUwc+xda00cn1alhbq
         kwNw==
X-Gm-Message-State: ACrzQf2IBqCuSCXjIbI5HcWKoxiOhjUQH/VT/vMdpjHxU8ZCT8xcIDtP
	dBXPfpRofmdKb0ULQ+J8eMM=
X-Google-Smtp-Source: AMsMyM7VRYR4ja1354r4nOb4sGsFC9SF+e+FSsFCXSIKNyBk3irIl03bXoaveyKZeBBPlTvKUXlEMQ==
X-Received: by 2002:a05:6808:1708:b0:351:728b:3a03 with SMTP id bc8-20020a056808170800b00351728b3a03mr22106906oib.275.1667676692450;
        Sat, 05 Nov 2022 12:31:32 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id l14-20020a4ac60e000000b00499499a8e18sm834040ooq.5.2022.11.05.12.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Nov 2022 12:31:31 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sat, 5 Nov 2022 12:31:29 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221105193129.GA1487775@roeck-us.net>
References: <20221105060024.598488967@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105060024.598488967@goodmis.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 0EBAA3F061
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
	NEURAL_HAM(-0.00)[-0.989];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.177:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.177:from];
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
Message-ID-Hash: OCMPSRCZ7DRSONOKSHNN3VVPXP3JR6DF
X-Message-ID-Hash: OCMPSRCZ7DRSONOKSHNN3VVPXP3JR6DF
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@
 lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 00/38] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OCMPSRCZ7DRSONOKSHNN3VVPXP3JR6DF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Nov 05, 2022 at 02:00:24AM -0400, Steven Rostedt wrote:
> 
> Back in April, I posted an RFC patch set to help mitigate a common issue
> where a timer gets armed just before it is freed, and when the timer
> goes off, it crashes in the timer code without any evidence of who the
> culprit was. I got side tracked and never finished up on that patch set.
> Since this type of crash is still our #1 crash we are seeing in the field,
> it has become a priority again to finish it.
> 
> The last version of that patch set is here:
> 
>   https://lore.kernel.org/all/20221104054053.431922658@goodmis.org/
> 
> I'm calling this version 4a as it only has obvious changes were the timer that
> is being shutdown is in the same function where it will be freed or released,
> as this series should be "safe" for adding. I'll be calling the other patches
> 4b for the next merge window.
> 

For the series, as far as my testbed goes:

Build results:
	total: 152 pass: 152 fail: 0
Qemu test results:
	total: 500 pass: 500 fail: 0

No runtime crashes or warnings observed.

Tested-by: Guenter Roeck <linux@roeck-us.net>

Guenter

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
