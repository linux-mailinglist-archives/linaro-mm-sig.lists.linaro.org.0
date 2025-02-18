Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 647AEA3A31F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 17:47:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61A7044AF5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 16:47:00 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id 8625A43FFF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 16:46:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=mlLTN9RW;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.216.44 as permitted sender) smtp.mailfrom=daniel@fooishbar.org
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2f9d3d0f55dso8214448a91.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 08:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1739897215; x=1740502015; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IOylOGK8+KXVlSKwEjhOkQ9Uo6qP5iYjwH/vqYLvpOc=;
        b=mlLTN9RWh6iWxovUhm9hdVPCPVH+T/g/7uFX1Zcs3cLDXOEundbr6UyyOowVbaN4bT
         uWk0YV8PQ5vDC7V6Mki+R5GZtc+gyuAtGev9F5cGjqCITeJZEKnPjD//8Txz80/nG0c3
         saV4fYzFzJ9IJcGztAIILeQN2IWOyFxhZtGEm8coobAqM1ks2Nxq1I8NDSW9ypTE/Bav
         5XBbWsyIB7S6d2oG0fg0QH+ZMgScIaCvSR8Rhylu7r5rCZYM3KqbqjATI44JCNwzn4QR
         S8+e0ut5qYmxqU7jIjtmK5jp21uYjHg7cI88YpOimBKMpnlAaszbFhycQY2xPl+rcSPn
         B4iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739897215; x=1740502015;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IOylOGK8+KXVlSKwEjhOkQ9Uo6qP5iYjwH/vqYLvpOc=;
        b=iFaUoOJK24lewsPvFTQQjNpNnXmdxlOEU15v2u6wQrNcZa7YgFfGh/gdstIl75lYS1
         rSu4s7nzFHVhma2Gps1gZrun2Ry/nBldyWwiLc2RnKgseYXV6FK4pNgWOem1co9W6A/k
         lMxJkPlO8ilIZgB6QaIIuv9Z/WypzOGvMLvPwtEwvgPaQPqVz2nij/h5VZ4qfsAJpaPE
         PisHVCeyxd4VzsIHBmpeZ4Ni7z3HYxrL5jnFsmZjWxisPRHm6x5JwBRu50tormbuDFcK
         ARGQWUazuVpYIopXznOB5/Fene7MLxy3YZsT+KPBns4YQUb2afzIJidK/jbPDYoE8s3/
         gLGQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8cwWy0pZ1DxKTAu6H//tG0hAPQ2DhSSuD1BWBMBljr8INjByHKTojg3DKDek9yGIf07P8bgp1+6t9VCRX@lists.linaro.org
X-Gm-Message-State: AOJu0YzsP0zJXkl9hCTRM+QPUILW1hDGlq7S9STJx6rrVHYlLgdaJS6H
	Azd0q8ZetgHpmoSOgqlY6b8xehdDii1PdKC8MpJNBL8bK7dFAvgHc6UryAMc6WcPJQGOdrPz/Li
	HvrMI9ElswQLlYQfVohSt8s0Hlq6XMCar0w0L8w==
X-Gm-Gg: ASbGncty9WmfKrUf6vPaNn0yxasdM7+6QolWR63eFNMv4ay2hdEE7eUXrE+bzXZ70C/
	ltYdQsHnHUehN0uCXz26/LfeMWRLAjpCd3WDuZKknFGxyYxaiOeIVOENIXjmqtKc1JmFaFA==
X-Google-Smtp-Source: AGHT+IGHwzBsO/GBPkHZczfaNaO/9Fri81n9XYQ1ztlxgGE0CRA4HOyjovvD+vqgo/EOu8/IM5aMJO/ERmz9uK+U4xE=
X-Received: by 2002:a17:90b:2783:b0:2ee:b875:6d30 with SMTP id
 98e67ed59e1d1-2fcb5a17ccfmr165222a91.9.1739897215586; Tue, 18 Feb 2025
 08:46:55 -0800 (PST)
MIME-Version: 1.0
References: <20250218143527.1236668-1-jens.wiklander@linaro.org>
In-Reply-To: <20250218143527.1236668-1-jens.wiklander@linaro.org>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 18 Feb 2025 16:46:41 +0000
X-Gm-Features: AWEUYZkKtmN_-KWMeq06D2l9RZUatLIu9Ka5J6k3tL8rcVyNTYGe730GhgI3bME
Message-ID: <CAPj87rN7QQ2XRa4KnaH9MZrvyRcRWWrihSKousR1j7GD+bEQtg@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8625A43FFF
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.64 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.54)[97.92%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.44:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email];
	DMARC_NA(0.00)[fooishbar.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	RBL_NIXSPAM_FAIL(0.00)[209.85.216.44:server fail];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.216.44:from];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: E3NL3C5KSZTXTQLWEZ4LKSKWJZUNHRI5
X-Message-ID-Hash: E3NL3C5KSZTXTQLWEZ4LKSKWJZUNHRI5
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/7] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E3NL3C5KSZTXTQLWEZ4LKSKWJZUNHRI5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 18 Feb 2025 at 14:35, Jens Wiklander <jens.wiklander@linaro.org> wrote:
> This can be tested on a RockPi 4B+ with the following steps:
> repo init -u https://github.com/jenswi-linaro/manifest.git -m rockpi4.xml \
>         -b prototype/sdp-v5
> repo sync -j8
> cd build
> make toolchains -j$(nproc)
> make all -j$(nproc)
> # Copy ../out/rockpi4.img to an SD card and boot the RockPi from that
> # Connect a monitor to the RockPi
> # login and at the prompt:
> gst-launch-1.0 videotestsrc ! \
>         aesenc key=1f9423681beb9a79215820f6bda73d0f \
>                 iv=e9aa8e834d8d70b7e0d254ff670dd718 serialize-iv=true ! \
>         aesdec key=1f9423681beb9a79215820f6bda73d0f ! \
>         kmssink
>
> The aesdec module has been hacked to use an OP-TEE TA to decrypt the stream
> into restricted DMA-bufs which are consumed by the kmssink.

Thanks so very much for putting this together btw. This is the exact
thing we were just starting on, but you beat us to it by a few weeks
it seems. It's awesome to have an implementation of 'real' (if
useless) SVP, so we can actually exercise these codepaths in open
generic code.

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
