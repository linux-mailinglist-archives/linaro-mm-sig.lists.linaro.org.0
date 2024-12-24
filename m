Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDE09FBBC5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Dec 2024 11:00:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBDC146CF4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Dec 2024 10:00:41 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by lists.linaro.org (Postfix) with ESMTPS id 6C4D5410D1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Dec 2024 10:00:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=W2odQZCM;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.179 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30225b2586cso64414471fa.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Dec 2024 02:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735034434; x=1735639234; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CaXLFhyvddY8J2ykAWjPDBthPNDj/QrO8YN8626lces=;
        b=W2odQZCMhTCsHHxVKecwo8Nwz0kZf2mZehwJaXB+MH7rVhrV2QLfkuMs78nlsOHx/i
         JZUsW5rsAWhl4cRDaCjYBlbhVBZLnVcPHWF1mdBFhNt83Z9CUixBlbyv/hZ0ZFT+/tDY
         MWjZtml2DFpuLQZwePpmtNBvVD50SxJB9rCb4e63fdfHvImuyONZSopgkzlRwxSdUPTL
         L1xgKUom2s+t/Ks+PSpl4ynAQn8mSp7G4q6HlSc8XLAHYBWSNef97rEyxSV48lA0I04o
         O9jh17hjB897kHABRAHSjHqZbTIepkU8jaqJ8Kdhm1xc95sCwEYA3eF86jDi4+ig1NEL
         5GHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735034434; x=1735639234;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CaXLFhyvddY8J2ykAWjPDBthPNDj/QrO8YN8626lces=;
        b=EolSdfvYwNjA53vqmD57IGincpJ0GG33UufiorGPZBJ+h0Y/JEkhIWXeSX2Qybjzql
         FKemsR6WFlj02dI51r+zHYeBiiqm3GH5yARSkqGeXs21UEVMfYMWLVYn63knOhc699x7
         OlItNp9g3uogn8KZig5kOEmu1CsInYHxuULydChYYmgN3B2TEdkq96QmavKQ7BoTxBD0
         H4c0mttdurPqB4jbxuU4T7kunAfFkj8Wh1CQTvqNLSlc13cF408BAo6cle0/jnMhr3gv
         cBUldmoO9KdSUWDhIrI6zfGnxQxxb4f8lxjq7phrRiyPTM//pizNR5DzBKX35tWaraJP
         Fgzg==
X-Forwarded-Encrypted: i=1; AJvYcCXKaaLlawrEFcYMasiLnpI6HlJH1iK6joL2DKguw5tX1o6fN1CtVrt8tjPjpTsG/LcU2LXdc8a0w1i7RXPv@lists.linaro.org
X-Gm-Message-State: AOJu0YzICWiKxK5iTzF0zSCj3oti357dWNmap5HCQZoBCyXJJRjAWfY+
	aW56ZE3c3lrE1V6/TNkScDwnITxjSHvD7p9CN0pV2JO0928UYcuW0/eXkzIONscp4w==
X-Gm-Gg: ASbGncvMl4f9ZSbzLVnfPgRWsDn85WT+XYfwzNhDNK7ih0W0i3nu+76NqGGI7sGo62Z
	Vf4q4KESDJEVHqCRs4uAwDxxnoJLUN3BkiIQBG4hS1LvvrKOQTxkw+5M3Nfnni/1O0gcWEZvD4J
	BFkyE2yICBIafIFW01cd5kqhomfiFPso9/LqinZbbWo65rVUq1M6CEJc6dwqeke0kE4V6caSc0j
	16kuikdWHsAC52se6K619ecLcUHpEWwk6CnLfmPsbJ2ZYzMX76nKzZkzNBe2B7wg7a0+8axKafA
	+U+Sms8pqWMactt+hIH1NJum7t1TFO/pALmW
X-Google-Smtp-Source: AGHT+IEtJ2E9FABbPtAZzZbxNdp+y65cylCWsCGjfOG/8r7Qoah/U7UWd9bnkQBDUU5mmh+x9lgJYA==
X-Received: by 2002:a05:6512:6cc:b0:542:28af:814 with SMTP id 2adb3069b0e04-54228af083cmr5136432e87.19.1735034434112;
        Tue, 24 Dec 2024 02:00:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813882sm1556243e87.168.2024.12.24.02.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:00:32 -0800 (PST)
Date: Tue, 24 Dec 2024 12:00:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Lukas Wunner <lukas@wunner.de>
Message-ID: <omjfxg4gftxubikx5ynu6if6fupby3nulcilw6dhwtuetpgl7i@2gwiupvg2coh>
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <Z2KsuAs-Dd4ZDaXR@phenom.ffwll.local>
 <CAFA6WYNVHu7_-bNAuTYBRBdoJwfk2VrW5M4aFVkb_UWQ=uxTvQ@mail.gmail.com>
 <Z2p-v-xjhzhPso6u@wunner.de>
 <Z2p_ucfNOyKcbWhH@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z2p_ucfNOyKcbWhH@wunner.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C4D5410D1
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.07 / 15.00];
	BAYES_HAM(-2.07)[95.47%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.179:from];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.208.179:from,2001:14ba:a0c3:3a00::b8c:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.179:from];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: RVHC67UNVQD2HKFNCD4LNLFCTUFH45II
X-Message-ID-Hash: RVHC67UNVQD2HKFNCD4LNLFCTUFH45II
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Garg <sumit.garg@linaro.org>, simona.vetter@ffwll.ch, Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVHC67UNVQD2HKFNCD4LNLFCTUFH45II/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 24, 2024 at 10:32:41AM +0100, Lukas Wunner wrote:
> On Tue, Dec 24, 2024 at 10:28:31AM +0100, Lukas Wunner wrote:
> > I did raise a concern about this to the maintainer, but to no avail:
> > https://lore.kernel.org/r/Z1Kym1-9ka8kGHrM@wunner.de/
> 
> Sorry, wrong link.  This is the one I meant to copy-paste... :(
> 
> https://lore.kernel.org/r/Z0rPxCGdD7r8HFKb@wunner.de/

Herbert asked a logical question, which got no response from your side.

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
