Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI6PCf8Y4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B13EE412754
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF16F4561F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:37 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id E29FB3F949
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 14:03:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Sr7DMt0Q;
	spf=pass (lists.linaro.org: domain of jkangas@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jkangas@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772200992;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oV2BIg3dhsX9PonNzGGB5cY2QemaB9h/4eyj8OI7C6o=;
	b=Sr7DMt0Qf7a4MHqdkKNmmGBCUsZYBIUB7kPwn3EeWNYIb2+TgpcqtCw7uxP8DPKVw/Kmed
	RlmmTiMbns5BkT29HHV8I8MefoqSzTVIMoxSxDyOtqVHeO/8zzU4/PZLUz9Boimj6g72i6
	fM/FEr22Hiz8LzoqmynD0YCUea/JRYQ=
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com
 [209.85.216.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-326-IegJlxUMMMGXXFz9-M77NQ-1; Fri, 27 Feb 2026 09:03:11 -0500
X-MC-Unique: IegJlxUMMMGXXFz9-M77NQ-1
X-Mimecast-MFC-AGG-ID: IegJlxUMMMGXXFz9-M77NQ_1772200990
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3591c9cb81eso7565943a91.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 06:03:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772200990; x=1772805790;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oV2BIg3dhsX9PonNzGGB5cY2QemaB9h/4eyj8OI7C6o=;
        b=nqsUgEtYEYUWjtCwsdIGSUy/W/rhy/rVg2ff5caoUpJ561qEYf0haovEBctQWbXEJH
         p8LWYBatgzD5Bg6nizvIO/4dMRbAvTxTmlboRKuQW7W4JsGkPAoe8mnWk5CIBLEKBdwr
         g1QLRROmpJ8UseuC5HBHwZObjIt0c5jet83pn/C9x86gtmbC5N9rjJ+H3DJhkk8rVXYy
         JpObXNmsiEYzPHi7OjG7w+6rndUObGGYxzB9G+j97Ty4RV9ScThg6d6Ary3r+CdORG5D
         8Ii6stpBlM24Q+IqslMjkzUR1wmfaMhXHgRNI55Em+1dbagwyN5r4GKTho9nf5cw0dLW
         mvgw==
X-Forwarded-Encrypted: i=1; AJvYcCXlp2BVHDS8fJ6i+pnBeqMDRd/+6gmb4sR1l99dbEdlb2TNK02q6G9XNxcpGXxTWHOAGv+BKXmPOPoyK5vb@lists.linaro.org
X-Gm-Message-State: AOJu0Yy7cURJs7GDSZpTSrRUfumZDUMJmSv+6pfsjqaQu4/+Yd4UWEdG
	mvBtS4YJDXCm1Yf31pIAHPHythKTt7c1TBh06ioId5ELSyfhUZGJh6yTzUk9Mgp51rxld8AlhUJ
	fdm8401jHanbvTaND09zFTjxpJn5MUb9U/TzSzLdxPlIKIVWD7G68UONQoPYn6e/2Pm8C
X-Gm-Gg: ATEYQzx1BVn9yC7gPY5h/TAMJnEBwOHfgtF/h25d0zXgx7/ZBuQ23A0/FMOLHO+LPy7
	XFqKbUQI9qbyjIfD2KFu5eOQBGBJrYzP7iTYH5MvFaoJWuJun1FcBWH6FWozoSGNALnMX2Ro/WH
	iOuWyOj6QRWou1KNHN6tMUDGBDXeDwxEXtVP65dMPqlZPGW0X39xJszla9qsGcYUU5QZiGL4L+9
	+0L6Pdw1z3OWGcNcSI+lHuv976QnU8Hur4K7NiBk5a+HRsZNXUdQHwDoSIEopXQKVpl1daGSY6T
	TNRVQuSVbWk/3QW59q00hzCNNCqNic/Idz2zU8ZFCHXmGDcRd3+bFlwM9PNQkZwiKNQLOjL++v2
	cdSu/CuPlXQpHUllfUqXM4TdjKP8yKZ7zcGJC92zUFYIv89uXYfTY5Q==
X-Received: by 2002:a17:90b:5710:b0:341:88c9:6eb2 with SMTP id 98e67ed59e1d1-35965c3385fmr2137016a91.1.1772200989851;
        Fri, 27 Feb 2026 06:03:09 -0800 (PST)
X-Received: by 2002:a17:90b:5710:b0:341:88c9:6eb2 with SMTP id 98e67ed59e1d1-35965c3385fmr2136984a91.1.1772200989423;
        Fri, 27 Feb 2026 06:03:09 -0800 (PST)
Received: from jkangas-thinkpadp1gen3.rmtuswa.csb ([2601:1c2:4400:eb20:99f3:ffd5:11da:6745])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35913269232sm5305497a91.5.2026.02.27.06.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:03:09 -0800 (PST)
Date: Fri, 27 Feb 2026 06:03:07 -0800
From: Jared Kangas <jkangas@redhat.com>
To: Larisa Grigore <larisa.grigore@oss.nxp.com>
Message-ID: <aaGkGwbk-sh0YJqj@jkangas-thinkpadp1gen3.rmtuswa.csb>
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vJS78BimOezjsUmIhgcsaq0MnycH0XzkYrl8OHf-en0_1772200990
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spamd-Bar: ------
X-MailFrom: jkangas@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IHMRRGPXRO7KDN6GD5L4ECGTT67FZKTH
X-Message-ID-Hash: IHMRRGPXRO7KDN6GD5L4ECGTT67FZKTH
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:08 +0000
CC: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, chester62515@gmail.com, cosmin.stoica@nxp.com, adrian.nitu@freescale.com, stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/13] Add DMA support for LINFlexD UART driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IHMRRGPXRO7KDN6GD5L4ECGTT67FZKTH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1155];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,redhat.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jkangas@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,jkangas-thinkpadp1gen3.rmtuswa.csb:mid]
X-Rspamd-Queue-Id: B13EE412754
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Larisa,

On Mon, Feb 16, 2026 at 04:01:52PM +0100, Larisa Grigore wrote:
> This patchset enhances the LINFlexD UART driver and its device tree bindings to
> support DMA transfers, configurable clock inputs, dynamic baudrate changes, and
> termios features. It also includes a series of fixes and improvements to ensure
> reliable operation across various modes and configurations.
> 
> The changes added can be summarized as follows:
> 1. Fixes with respect to FIFO handling, locking, interrupt related registers and
> INITM mode transition.

Tested this series with the default devicetree configuration by booting
the board to a login prompt about 200 times. Without the series applied,
I was seeing a bug roughly every 30-50 boots where the kernel would
would hang in linflex_console_putchar() waiting for DTFTFF. In my tests
with the series applied, I didn't see any regressions and the bug no
longer appeared. Thanks for the fix!

Tested-by: Jared Kangas <jkangas@redhat.com> # S32G3, interrupt-driven

> 2. Removal of the earlycon workaround, as proper FIFO handling and INITM
> transitions now ensure stable behavior.
> 3. Support for configurable stop bits and dynamic baudrate changes based on
> clock inputs and termios settings.
> 4. Optional DMA support for RX and TX paths, preventing character loss during
> high-throughput operations like copy-paste. Cyclic DMA is used for RX to avoid
> gaps between transactions.
> 
> Larisa Grigore (8):
>   serial: linflexuart: Clean SLEEP bit in LINCR1 after suspend
>   serial: linflexuart: Check FIFO full before writing
>   serial: linflexuart: Correctly clear UARTSR in buffer mode
>   serial: linflexuart: Update RXEN/TXEN outside INITM mode
>   serial: linflexuart: Ensure FIFO is empty when entering INITM
>   serial: linflexuart: Revert earlycon workaround
>   serial: linflexuart: Add support for configurable stop bits
>   serial: linflexuart: Add DMA support
> 
> Radu Pirea (5):
>   serial: linflexuart: Fix locking in set_termios
>   dt-bindings: serial: fsl-linflexuart: add clock input properties
>   dt-bindings: serial: fsl-linflexuart: add dma properties
>   serial: linflexuart: Add support for changing baudrate
>   serial: linflexuart: Avoid stopping DMA during receive operations
> 
>  .../bindings/serial/fsl,s32-linflexuart.yaml  |  31 +
>  drivers/tty/serial/fsl_linflexuart.c          | 972 +++++++++++++++---
>  2 files changed, 846 insertions(+), 157 deletions(-)
> 
> -- 
> 2.47.0
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
