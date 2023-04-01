Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA586D2F18
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Apr 2023 10:35:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D961F3F09C
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Apr 2023 08:35:53 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by lists.linaro.org (Postfix) with ESMTPS id CF2253EC68
	for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Apr 2023 08:35:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=GKwwshig;
	spf=pass (lists.linaro.org: domain of christian.gmeiner@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=christian.gmeiner@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id bm2so18426898oib.4
        for <linaro-mm-sig@lists.linaro.org>; Sat, 01 Apr 2023 01:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680338142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1VwVQomXd5Zv0oc2cOzA2dNy1IDIN7zen19ti9Y4+h0=;
        b=GKwwshigjYzgT5A6DHoE7vuuJiHt2dyOgEASzCH2cCRjnfunba4bjWRQA+VMGSgikA
         V6gn7B3+Ko4JgRsa2wJV9iNh3BcB4kNxOzQKuLPjM8Zm0QmwqSywpVu8gKIeY8QoQgpi
         VCNd8S8Sht01KQNuneIFxw14tUN8JdNZeHQQOES9KED0nY8dp0vby3FQe/FlQHSC7KB3
         +WIOj213RflIqrOAniBrzHxU8A45XW9s0zsYj1eCZ2MtvoX3m+eTnAX1TR8Zf9h+EJlV
         3J/wG/M6heQOjQ4YLW85RVpHRAJFIfPd8huyBMoFhS3InV5cAswsWygJOLAF9SY2zPZ8
         sgIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680338142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1VwVQomXd5Zv0oc2cOzA2dNy1IDIN7zen19ti9Y4+h0=;
        b=oDg0R0Azcuq9y7vxHL+8VaLhQGPPdW+3nB0/nChfYFy8Ajx/Zv1a1gWokDT4ErHLPG
         pDGzzXdwJHOQ+Yy3OQyU6JsRRewacYhWr3T+KEmYGSHPdaRiHFx4SJizl8YJ9iGtf3ie
         esBOjtjOfpq4ANRxdi3ZzUbH32RC6NMM8caEnyMJrvnyjx7uJvpMYFux5kXuA1bGOZgJ
         QPr8y0quRRY3kRyRC8Ul8aSjIEGlEFYegwpNHP7HMLLWF14JuUof5/eznfJpe6wX6vFU
         CpgUBNmNvPpgg23UbnUOoYVoqWergqRa4v8xYTnlCJwcWEu3sRwXGmKBd83MVEKqp3um
         xAdg==
X-Gm-Message-State: AO0yUKXhwauhgcdW9WAh3KMoSQLYLVLdKVl4g+TDU4S3YGsodZvwDS+g
	bGD0wToJ1xOPTLX78dMwwRdlxY1JlDb47GzFqsQ=
X-Google-Smtp-Source: AK7set8KjM/fud01LYEdEw4o75u38YsCKt6Kspqxm62B4+H55PxMjW5idzgSivTrzffGLyoXQLXC/bnUz/eIf6NwUu4=
X-Received: by 2002:a05:6808:8c:b0:386:b6a7:c093 with SMTP id
 s12-20020a056808008c00b00386b6a7c093mr8861476oic.6.1680338142207; Sat, 01 Apr
 2023 01:35:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200424222740.16259-1-afd@ti.com> <CAL_Jsq+4mf6QHX27knoHTXA4vnsC3swuvAH7zK1DpyaV-p_qbw@mail.gmail.com>
 <f46c097a-b2a6-6368-a8a4-e30995a54d17@ti.com>
In-Reply-To: <f46c097a-b2a6-6368-a8a4-e30995a54d17@ti.com>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Sat, 1 Apr 2023 10:35:30 +0200
Message-ID: <CAH9NwWeZnDEkundm98=KL6xB9bVO3nOkk48xMF-eQnztP4DD4g@mail.gmail.com>
To: "Andrew F. Davis" <afd@ti.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CF2253EC68
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.54 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-2.54)[97.92%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.172:from];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[]
Message-ID-Hash: IFOYLGK7235RIPHWQ2BY24PNVXDHMB7Q
X-Message-ID-Hash: IFOYLGK7235RIPHWQ2BY24PNVXDHMB7Q
X-MailFrom: christian.gmeiner@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] misc: sram: Add dma-heap-export reserved SRAM area type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IFOYLGK7235RIPHWQ2BY24PNVXDHMB7Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Andrew

>
>
> Okay, will split for v2.
>
>

Was there a follow-up v2 of this patchset? AFAICT this series did not
make it into the mainline kernel.
Do you have any plans to work on it? If not I would like to help out
as we have a use case where we want to
use a dma-buf sram exporter.


-- 
greets
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
