Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCEC61DE8C
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 22:19:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BC663F061
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 21:19:55 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by lists.linaro.org (Postfix) with ESMTPS id 70AC13EC14
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 21:19:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=ZuJIeLB+;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.222.177 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-qk1-f177.google.com with SMTP id x18so5278651qki.4
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Nov 2022 14:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=;
        b=ZuJIeLB+J2B+Wi1b1yHoLdNdJG615BQeh3CPU6LD93y3msmDVTjWdZW9SDWuwWG0Ca
         YhJ+P7666j6kD5Xt3qGOHQOk6MqT4dr6x8NEoIAvnzfrmsju0oEob+uN+nSjB06pGmVE
         9YOPL0fQ+TfTab0XaBhkdWiy9kYH1H39RsusA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAUSnUna3zS1fBFrtEIiCL0CSikhXV9H9gl4bxAoOlg=;
        b=XgrmJtNTvNR9qqHzLPRPqzpXvuQlwbLRBDHUGFkIPjcSd4o2OfVDgB4aecABleKTTM
         ge9Ye3ofdAyij9vu9q5FegZsI7yUHTIoR3UnTtRhl5fw5H1qKL8/AfYf4AgNxXWWW53n
         pKiPQ8fAz+H/8t7QMIziGv5fkXSaYglPSRCn9xvPsufYeUEwJ23Y0PvrfGnPMGOv9O7i
         yj/KYEH0TDL6ZuPNDJVAZ9YY8fO1keg5R8Ncnecsg19vXckuQQKHuEwrheWw7iKYX9LL
         I0X8l4Jv5rYRXcq7exINEcBM/oHiVqAZoPjRMhk0uXfv/6Nx6fLTq8uRpM7WXQmMpNv9
         r1cg==
X-Gm-Message-State: ACrzQf18l97c+Gv1yW5+L6x5cRiJRFCub9ncV8zUqFPVqR+71XZHZBlt
	erEihH3JfVL0wPQ+IGOqahBIE+XdqCAA4g==
X-Google-Smtp-Source: AMsMyM582Jg0X6KpLrPsUiLfQ60HqXlp7y3+Cm11TAXyKjBTyUEWJIsGo8wgVKzmZQSxUCp2Q1Lmmg==
X-Received: by 2002:a05:620a:1476:b0:6fa:4c67:83ec with SMTP id j22-20020a05620a147600b006fa4c6783ecmr18962959qkl.23.1667683177882;
        Sat, 05 Nov 2022 14:19:37 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id j19-20020a05620a289300b006b949afa980sm2708519qkp.56.2022.11.05.14.19.37
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Nov 2022 14:19:37 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id n85so3945099yba.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Nov 2022 14:19:37 -0700 (PDT)
X-Received: by 2002:a05:6902:1352:b0:6bb:3f4b:9666 with SMTP id
 g18-20020a056902135200b006bb3f4b9666mr38314227ybu.101.1667682810745; Sat, 05
 Nov 2022 14:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org> <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home> <Y2bPlllkHo5DUmLY@zx2c4.com>
In-Reply-To: <Y2bPlllkHo5DUmLY@zx2c4.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 14:13:14 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
Message-ID: <CAHk-=wjkkomrdcrAxxFijs-Lih6vHze+A2TgM+v7-Z7ZkXT+WA@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: 70AC13EC14
X-Spamd-Result: default: False [-2.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DWL_DNSWL_LOW(-1.00)[linux-foundation.org:dkim];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[44];
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
Message-ID-Hash: G7KW4EHUTXVF5VMV5SQLCBTLGNO5UJ4A
X-Message-ID-Hash: G7KW4EHUTXVF5VMV5SQLCBTLGNO5UJ4A
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.
 kernel.org, linux-staging@lists.linux.dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 00/38] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G7KW4EHUTXVF5VMV5SQLCBTLGNO5UJ4A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Nov 5, 2022 at 2:03 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Something that might help here is changing the `...` into
> `... when exists` or into `... when != ptr` or similar.

I actually tried that.

You don't want "when exists", you'd want "when forall", but that seems
to be the default.

And trying "when != ptr->timer" actually does the right thing in that
it gets rid of the case where the timer is modified outside of the
del_timer() case, *but* it also causes odd other changes to the
output.

Look at what it generates for that

   drivers/media/usb/pvrusb2/pvrusb2-hdw.c

file, which finds a lot of triggers with the "when !=  ptr->timer",
but only does one without it.

So I gave up, just because I clearly don't understand the rules.

(Comparing output is also fun because the ordering of the patches is
random, so consecutive runs with the same rule will give different
patches. I assume that it's just because it's done in parallel, but it
doesn't help the "try to see what changes when you change the script"
;)

                 Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
