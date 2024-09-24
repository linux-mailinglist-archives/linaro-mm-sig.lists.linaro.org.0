Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CADE8984D4A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 00:03:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFB5B44123
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Sep 2024 22:03:25 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id EB2BC3F3CC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Sep 2024 22:03:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=ON+ZZHAX;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.222.169 as permitted sender) smtp.mailfrom=daniel@fooishbar.org
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7a99a46af10so627244985a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Sep 2024 15:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1727215386; x=1727820186; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NsZrdsG+uwrLVvS5FWIhBRuHHog4+l/Yf5EAxQLtzhs=;
        b=ON+ZZHAXL7VQIYd++29EwuHsScmauhwCJp6oQeDcF1JSXyA0LsrYNI/BQAA6dQ1L0I
         wfyf5jDeZvbnhEicUtkEZH4PNYBb9KADTxvS0IcLx7wAefZXlDMOR3j2ByVQOobiRhF3
         Hd4Tsvlii4b/njvsgA9XFiYIyZLbtG25kSr2xluNQBHvtqhVuNInzRhvMFcmPGb1tTTv
         JtjYk56WXSjUOtlbSNP1mdDbadvYzLNIOJjY93HcvB28lmz3R9uwDdRkL1C7PvCaT7C9
         3TF0Oq2iIzbqe+cezEz56SQtJ0DMDJlNqZy3h7xUB3zZcNXfo8JFsh4vH0inIc1ABXic
         17KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727215386; x=1727820186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NsZrdsG+uwrLVvS5FWIhBRuHHog4+l/Yf5EAxQLtzhs=;
        b=elAhsbmpgpuHF1dyVxeNwlcQSNcWZbLiSJxPXQyuTPDrtK1z2EHHAuOWrcn5RJKaFj
         3roztfoVWNHRfZIbb6g/UITgbiJGsUAyKW3okDFrVls36YGkRDB24S6tyZr44TtoV792
         E2rcjL2kvY8BDYuDQubJY9pKdsS/DoOZ+Zk2Qa4u9OYSuGC4miIIniwVxq2XopygeMkI
         a/PrSkcZ5vz+1TVaDDsfR9c9S/OpjxMjUH4NmM4y/u9k/OofPmb4dRWavIvoBK7+8IkT
         QITPbt7Cegw1jk3eQweYDXwq4OlTgFQm1dQWZ3B46WW42nNI9CI2QRkWozshhhnZKnHh
         N37g==
X-Forwarded-Encrypted: i=1; AJvYcCXhVxTmaSz50W9j+w6JGfVloLXp/JKTYlQs8y2+MaIG0WHtez0DUzkenw6S6gF8vXgzyoeTJI5ZAJ19lJUZ@lists.linaro.org
X-Gm-Message-State: AOJu0YwjuY5XtxgFXYhVDRg4SvVJZqDjoYTC4OTP8DskFPxuvpgKQ+mc
	fJV7oCgm04CUSnrBBL2b1dCZXRYOVFmyS04NiapqfqX8vX8AayZZYXjenVB7seQGGE+7lO4bj1+
	/9Xzvh2w528HUUDDQWB7+3vnI3g/boTrXsavz3w==
X-Google-Smtp-Source: AGHT+IElqfXPuPng8AojlDDF2C6GLMgjgq9uYfkfDW9uAzUUN373GhIZBRXCnSZ4eftp7Scr+RM/AU3bO+2aPn4itIQ=
X-Received: by 2002:a05:620a:179e:b0:7a9:be7a:9220 with SMTP id
 af79cd13be357-7ace745d94emr87761585a.60.1727215386507; Tue, 24 Sep 2024
 15:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
In-Reply-To: <20240830070351.2855919-1-jens.wiklander@linaro.org>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 24 Sep 2024 23:02:54 +0100
Message-ID: <CAPj87rM5LSBEdMECyh0WTkjWWySDv2_eyqj7ew_qU7xQ5LEdgA@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EB2BC3F3CC
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.79 / 15.00];
	BAYES_HAM(-2.79)[99.08%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.169:from];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DMARC_NA(0.00)[fooishbar.org];
	DKIM_TRACE(0.00)[fooishbar.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: I7G3TEO7VJ43SXKQXAK3YF6V24H2AW3U
X-Message-ID-Hash: I7G3TEO7VJ43SXKQXAK3YF6V24H2AW3U
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I7G3TEO7VJ43SXKQXAK3YF6V24H2AW3U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jens,

On Fri, 30 Aug 2024 at 08:04, Jens Wiklander <jens.wiklander@linaro.org> wrote:
> This patch set is based on top of Yong Wu's restricted heap patch set [1].
> It's also a continuation on Olivier's Add dma-buf secure-heap patch set [2].
>
> The Linaro restricted heap uses genalloc in the kernel to manage the heap
> carvout. This is a difference from the Mediatek restricted heap which
> relies on the secure world to manage the carveout.

Calling this the 'genalloc heap' would be much more clear.

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
