Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DEABE61A191
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 20:51:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDE513EDA1
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 19:51:31 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by lists.linaro.org (Postfix) with ESMTPS id E37BC3ECE1
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 19:51:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=bIdKEWgR;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.219.42 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-qv1-f42.google.com with SMTP id j6so3876109qvn.12
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 12:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x16jINQR4q6R4H/0ehn+NSarZW0ZiXtTfCfHHiaRLp4=;
        b=bIdKEWgR5UZIy0TJaruQujMahMwynr4PVMnDcU4kBitHBNo7q073JbrYzG65FbHP7Y
         mbM9hFjlLlwQAouSAl9oSuR5cXI0K/JQyyZwmKs1co0JGtwjHN72PIS9n6MKeTRWxT7Z
         cCPuFkDzNQGR2KqOHNVW0/FBQA0CMharaPptg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x16jINQR4q6R4H/0ehn+NSarZW0ZiXtTfCfHHiaRLp4=;
        b=gstxTxwu/c0grSMsxYIDNBfvjO78admLW/fF7puqFJRr6qUBFDrM0CUTnYOOJ1NswJ
         LO2yfQBUmA+u3n2qnNYlTCqiENDoA52JNJ9sbAJ4HoSn9ei4llPpeTnXr+9HKWJ1mrpd
         SPWI3THd2/Yc+FvJnjO6E9jpMO3TY6vV82o+Q6z8ZjcU/H8Y3Al7Ho0QNk9aclOeyNOC
         ssYx2l3RzpOAthmn21dxaFE4bkBaCfMsJJ+UOIqC9CV/1i/yDGjFlrThO9kJ0s4kNJqG
         VpDUnnPURh0byco2HEhC1qaCje4MvrQJHddVmUbVYNZxtUVw+YtaK6u/GJ+vLFqIdsZ/
         XZ4g==
X-Gm-Message-State: ACrzQf0lQi/ejei5h5X2socQXuPbUhPXxa09spxJw5D0ySqoA42Wqfqh
	pFSwpmC0iWnkVe4KiJdURJRTrupz/qvUgg==
X-Google-Smtp-Source: AMsMyM4X+OqjNVzmq48McDSEGuJVOAcnXIPV/n9Yk5C8Z8HM3t6SCJIhsTtKie+ZFsYuDORsisRgGw==
X-Received: by 2002:a05:6214:21ed:b0:4bb:e947:c59a with SMTP id p13-20020a05621421ed00b004bbe947c59amr28162602qvj.46.1667591472385;
        Fri, 04 Nov 2022 12:51:12 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id t35-20020a05622a182300b0039cbbcc7da8sm172845qtc.7.2022.11.04.12.51.10
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 12:51:11 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-3691e040abaso52871257b3.9
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 12:51:10 -0700 (PDT)
X-Received: by 2002:a0d:ef07:0:b0:373:5257:f897 with SMTP id
 y7-20020a0def07000000b003735257f897mr16823922ywe.401.1667591459021; Fri, 04
 Nov 2022 12:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20221104054053.431922658@goodmis.org> <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
In-Reply-To: <20221104154209.21b26782@rorschach.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 4 Nov 2022 12:50:42 -0700
X-Gmail-Original-Message-ID: <CAHk-=wge9uWV2i9PR6x7va4ZbPdX5+rg7Ep1UNH_nYdd9rD-uw@mail.gmail.com>
Message-ID: <CAHk-=wge9uWV2i9PR6x7va4ZbPdX5+rg7Ep1UNH_nYdd9rD-uw@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: E37BC3ECE1
X-Spamd-Result: default: False [-9.20 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[linux-foundation.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.996];
	DMARC_NA(0.00)[linux-foundation.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-qv1-f42.google.com:helo,mail-qv1-f42.google.com:rdns,goodmis.org:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.42:from];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.128.171:received];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: RXLGEQ46H65MFVA4EL6FFTRQKJMMSBN7
X-Message-ID-Hash: RXLGEQ46H65MFVA4EL6FFTRQKJMMSBN7
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Guenter Roeck <linux@roeck-us.net>, linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, rcu@vger.kernel.org, linux-doc@vger.kernel.org, linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, linux-edac@vger.kernel.org, cgroups@vger.kernel.org, linux-block@vger.kernel.org, linux-acpi@vger.kernel.org, linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, linux-pm@vger.kernel.org, drbd-dev@lists.linbit.com, linux-bluetooth@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-input@vger.kernel.org, linux-parisc@vger.kernel.org, linux-leds@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.
 dev, linux-ext4@vger.kernel.org, linux-nilfs@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, lvs-devel@vger.kernel.org, linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, alsa-devel@alsa-project.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 00/33] timers: Use timer_shutdown*() before freeing timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RXLGEQ46H65MFVA4EL6FFTRQKJMMSBN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 4, 2022 at 12:42 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Linus, should I also add any patches that has already been acked by the
> respective maintainer?

No, I'd prefer to keep only the ones that are 100% unambiguously not
changing any semantics.

              Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
