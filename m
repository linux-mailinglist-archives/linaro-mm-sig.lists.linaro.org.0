Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C61757466
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 08:39:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E57153F34D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 06:39:13 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id C932E3EE30
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 06:39:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Cfg1a3hq;
	spf=pass (lists.linaro.org: domain of fmartine@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=fmartine@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689662346;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uGWZGJs7iJ0bHkmNYO8V4KcHUQKd/vxJD2N3uDsccto=;
	b=Cfg1a3hqUDHaftB3nt3OAOG6jV+8KcSr0ffWLgTpWRQLfSxVwzd+7nZU3hGxmA8Twhiigg
	ShHye4NDQDasxnCw84Puzf7VWjm7bwmvndDrRIkf3ktrF5K2VxWVG4IL4VhMYNlw2kS3uj
	nQm4+240x96X5EuM+lTddOHaYnuuniY=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-288-1iPpPDgCOwabYCuYuvWXlw-1; Tue, 18 Jul 2023 02:39:05 -0400
X-MC-Unique: 1iPpPDgCOwabYCuYuvWXlw-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3143a431a01so2928306f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Jul 2023 23:39:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689662344; x=1692254344;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uGWZGJs7iJ0bHkmNYO8V4KcHUQKd/vxJD2N3uDsccto=;
        b=C/ZAgJHE5AJ2vLVu4W3Bx9X8aOHSNJzpu/Jo1Gc/tehH8M1cUCs9JnMX8OMFYH4M73
         DxN4s0cPjmnmFtcuTubvDD1ZKSHRix4jbVBBZOGC/heIwGM0SMyMdBRszPW4q8dU5Okw
         BwxN98Wa7JpKeSJV+LZs2Ec752SCGrAHyTFOSF7/UPrj3FlgZDd0z8zFazPB1keuZDdi
         3Wl+fX0wj5acPlafyzJjpg2WcwJXVSDA5u/pRQtX3q+Ww79XFt6CS1B0UmvLQ2kif7wI
         okFeqi+AdoQgOgaoZ3/4lwWrOqshxPl2xESXxs3M08y8nTpLwUovRXVCpuO6ZrVI/t4w
         AfmQ==
X-Gm-Message-State: ABy/qLbjdpJwOTSvtsDEuFTXgiOmPzB01TpV8k0mYjh+QLY8ZJE0psMZ
	BCUN65ponr6H2cMlG6XCrf97PZEPWme1zhNDMzG3a30lvN2rEVILQVhY+ydDDt736PUtrpr/ZCC
	AOcETkZlXLmZ0kpNaLdVV+nwZAdo=
X-Received: by 2002:adf:d4c7:0:b0:314:268b:21f1 with SMTP id w7-20020adfd4c7000000b00314268b21f1mr11320609wrk.18.1689662344258;
        Mon, 17 Jul 2023 23:39:04 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHv18uaI93wFrqmmHeM+/M9p05Ssvf+TiET1HDtjWoK2EEJHqu10sNXHiTb6Zw0EgXCaxftWA==
X-Received: by 2002:adf:d4c7:0:b0:314:268b:21f1 with SMTP id w7-20020adfd4c7000000b00314268b21f1mr11320599wrk.18.1689662343997;
        Mon, 17 Jul 2023 23:39:03 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c7-20020adfe747000000b003143c9beeaesm1393087wrn.44.2023.07.17.23.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 23:39:03 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Luc Ma <onion0709@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, onion0709@gmail.com
In-Reply-To: <64b5dc93.170a0220.243d5.1d63@mx.google.com>
References: <64b5dc93.170a0220.243d5.1d63@mx.google.com>
Date: Tue, 18 Jul 2023 08:39:03 +0200
Message-ID: <87zg3tiv08.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C932E3EE30
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.50)[209.85.221.69:received,92.176.231.205:received,170.10.133.124:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	FORGED_SENDER(0.30)[javierm@redhat.com,fmartine@redhat.com];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.133.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,fmartine@redhat.com];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: KP5HAYXSGA62ZHUJUUGSSFCNXUAAXGFP
X-Message-ID-Hash: KP5HAYXSGA62ZHUJUUGSSFCNXUAAXGFP
X-MailFrom: fmartine@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: remove unintended hyphen in the sysfs path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KP5HAYXSGA62ZHUJUUGSSFCNXUAAXGFP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Luc Ma <onion0709@gmail.com> writes:

> From: Luc Ma <luc@sietium.com>
>
> Signed-off-by: Luc Ma <luc@sietium.com>
> ---

Even when is a trivial change I would add something as commit message, i.e:

"The kernel-doc mentions /sys/kernel/dma-buf/buffers but the correct path
is /sys/kernel/dmabuf/buffers instead. Fix the typo in the documentation".

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
