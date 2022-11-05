Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA40261DAE6
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 15:18:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A7333F5D6
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 14:18:39 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lists.linaro.org (Postfix) with ESMTPS id A5B793ECE1
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 14:18:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=cEC5IT1X;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-oi1-f179.google.com with SMTP id g10so7944716oif.10
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Nov 2022 07:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PYhR6hYWBdnOcbKjn7H8NpQf1Qg9j5JtEEKHrz9oi/g=;
        b=cEC5IT1XpqlAK68Dgo5+fxnDFCjVpzY0DRagRqxTDry42i1dK2tcbNHYd7Ayss+LTR
         Zq5Ih2v2443bsxwUvCZI2AevutQelDkhHOJqQhhh90RAdGwH1ztuIkNBULvbO0OWUDyB
         Zs3Rt+XqCTKE2Cs9eS/ndyLispMby6sUmCV9hIPpDCZ1JKOuE8AnRRE6npVgjTBnltto
         YYH4ZircOfT5HS0GEZGZOnxYVDveuMG1fd0QtTxHxYW8Huxn/roqBK+JFSqL6Tdp87g+
         GSZROE0361WHir4UDtfX6jA945ccs7fZ7mz9TOtoNTCBa80eZ2tSlHY0p6xlLXtkRQTo
         pyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PYhR6hYWBdnOcbKjn7H8NpQf1Qg9j5JtEEKHrz9oi/g=;
        b=gq/M+bf873eBHHK3nLOtxTsAdUA+Q2I/b65tzkZssGuxO8PHgHoRSuqyhvFL9xDvdd
         2xv5lOHRuKO77zlSlGRUJaD9zqeNkvBTZtE7YRCvRwDZJ/aPx+Sj3+ZoJulNwPc7lBGx
         zHeTCTwEy/v0K4uWljvCAWVsv512PI37c66+GXpN15nsW74ATDpqSW3yioNnqZgLRhfh
         d6ujaBt+6tF4loEPy2vKNJYUqZzM1d+ahMsBgcIYZRj6PXB9DzFBM/5aj8ehW1S0nIWO
         gahkafKNrGqM63VuCbdy+DFo2ba+caBB6e3zA2AlA2kvTMWWdaBmSh+/jX6+utoIuoTm
         ZDfA==
X-Gm-Message-State: ACrzQf12PlhtiwS60ArX7gVGdsml5IU2zJ7KnJYX/X+5hZRXYhQzlFZu
	AnmYPWlH7/GTgNqG7JWVT5uR4CuBSHQ=
X-Google-Smtp-Source: AMsMyM5In/UjkQAOQkguZQ2rHL63I8msSs9c6an0J/9gKdjSX2hezT8PwL34Y+85tQUi0BEYyplo0Q==
X-Received: by 2002:a05:6808:2104:b0:35a:5e9:a411 with SMTP id r4-20020a056808210400b0035a05e9a411mr18764923oiw.168.1667657900081;
        Sat, 05 Nov 2022 07:18:20 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id e1-20020a056870c0c100b00132741e966asm830469oad.51.2022.11.05.07.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Nov 2022 07:18:19 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sat, 5 Nov 2022 07:18:17 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221105141817.GF1606271@roeck-us.net>
References: <20221105060024.598488967@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105060024.598488967@goodmis.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: A5B793ECE1
X-Spamd-Result: default: False [-7.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[2600:1700:e321:62f0:329c:23ff:fee3:9d7c:received];
	FORGED_SENDER(0.30)[linux@roeck-us.net,groeck7@gmail.com];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.179:from];
	DMARC_NA(0.00)[roeck-us.net];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.179:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,groeck7@gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: BI3PZCLLLY76NAPWQFXDT655WEWULI5J
X-Message-ID-Hash: BI3PZCLLLY76NAPWQFXDT655WEWULI5J
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@
 lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 00/38] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BI3PZCLLLY76NAPWQFXDT655WEWULI5J/>
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

Just in case you didn't notice:

Looking through the resulting code, I think some of the remaining
calls to del_singleshot_timer_sync() can be converted as well.

The calls in drivers/staging/wlan-ng/prism2usb.c:prism2sta_disconnect_usb()
are obvious (the containing data structure is freed in the same function).
For drivers/char/tpm/tpm-dev-common.c:tpm_common_release(), the containing
data structure is freed in the calling code.

Thanks,
Guenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
