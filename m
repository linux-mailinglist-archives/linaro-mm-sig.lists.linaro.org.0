Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6341196FC12
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 21:23:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C32640F18
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 19:23:30 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 9410C40C36
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Sep 2024 19:23:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="k/2tmJK0";
	spf=pass (lists.linaro.org: domain of nathan@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=nathan@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id ABD6BA4525B;
	Fri,  6 Sep 2024 19:23:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCB13C4CEC4;
	Fri,  6 Sep 2024 19:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725650606;
	bh=/n96Kto0JZug0XlU6wzixOGIsRQmVNlzwkTH7ThriiM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k/2tmJK0ZIGo88O1HE1+DTpj1x8V/ZUa4loaN18gbxhwGafooIAqA0snN6lcl3BnD
	 tHGE/I27eRUfMvwbykJyJz4R5y41Et/JERKNFdNNQwHmMIeHki8cANYcXazZnf5bFQ
	 AE9wie939zT1oHWDiUVa8OHBh0oQyXZ8xyRTob6KHrC7StGbvtaImoy5BYCRh4/U5I
	 9eTWosx5C2OjaGnyRbPv2SM6zvdG01EPnLVnA89qjv14/y1d9VyD33syg1md8p3YOm
	 xPuHIAUAEc5KRrU3fHSddFxZOPySfzxiUImK1OTpqXdwpxgdHvplkDXMmvWA71/DcN
	 rKlzHB0YmkzPg==
Date: Fri, 6 Sep 2024 12:23:23 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20240906192323.GA3160860@thelio-3990X>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
 <20240906180348.GA1239602@thelio-3990X>
 <ZttJdexQFOq2Q9iQ@finisterre.sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZttJdexQFOq2Q9iQ@finisterre.sirena.org.uk>
X-Rspamd-Action: no action
X-Spamd-Bar: -----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9410C40C36
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: FJZ6XPXIWTG34XCC4T5GXMOPEEFMAADF
X-Message-ID-Hash: FJZ6XPXIWTG34XCC4T5GXMOPEEFMAADF
X-MailFrom: nathan@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alexandre Mergnat <amergnat@baylibre.com>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@l
 inaro.org>, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FJZ6XPXIWTG34XCC4T5GXMOPEEFMAADF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Sep 06, 2024 at 07:27:01PM +0100, Mark Brown wrote:
> Are these just warnings introduced by recent versions of the toolchains?
> These commits passed an x86 allmodconfig with GCC 12 at each step (I did
> catch one warning there with another patch in the series that didn't get
> applied) and 0day didn't say anything at any point.

Not sure, I did not look too hard. At cursory glance, I am not sure x86
allmodconfig would catch these, as this code depends on ARCH_MEDIATEK
(not COMPILE_TEST), which only exists for arm and arm64.

> > Clang 19:
> 
> That's relatively modern, though some of the warnings don't look
> particularly new and exciting.

Fair although I still see some of them on old versions too:

https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/10738441894

> >   sound/soc/mediatek/mt8365/mt8365-dai-adda.c:93:8: error: implicit conversion from 'unsigned long' to 'unsigned int' changes value from 18446744073709551614 to 4294967294 [-Werror,-Wconstant-conversion]
> >      91 |                 regmap_update_bits(afe->regmap, AFE_ADDA_UL_DL_CON0,
> >         |                 ~~~~~~~~~~~~~~~~~~
> >      92 |                                    AFE_ADDA_UL_DL_ADDA_AFE_ON,
> >      93 |                                    ~AFE_ADDA_UL_DL_ADDA_AFE_ON);
> >         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >   1 error generated.
> 
> That's a bit surprising, regmap_update_bits() takes an unsigned long?  I
> suspect the constants need to be defined as unsigned.

Does it? I see it taking 'unsigned int' for all of its parameters.

$ sed -n '1242,1250p' include/linux/regmap.h
int regmap_update_bits_base(struct regmap *map, unsigned int reg,
                            unsigned int mask, unsigned int val,
                            bool *change, bool async, bool force);

static inline int regmap_update_bits(struct regmap *map, unsigned int reg,
                                     unsigned int mask, unsigned int val)
{
        return regmap_update_bits_base(map, reg, mask, val, NULL, false, false);
}

Cheers,
Nathan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
