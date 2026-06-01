Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e2DjJJHHHmoiVAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 14:07:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F43962DD77
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 14:07:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=ACGTTxa8;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F16AC4098F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 12:07:43 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 93015404AA
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2026 12:07:32 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D51A4022C;
	Tue,  2 Jun 2026 12:07:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C2DF1F00893;
	Tue,  2 Jun 2026 12:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780402051;
	bh=yf9fztpSi4K+ljlndUdAbTgpH8FO9UBENIcySmefiuo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ACGTTxa8FbXBbbfTxT10geybgu/iGCQ5gAPvgGW65pwToitHKMb7oXIvmJwag/Gl9
	 7+Tz6MWHzmRjkbVhxq7H7CY1ekgHUKDFDvqts6yhC4KPN9pbt4W0DDnvGn2BeJEgE/
	 NQ6TYrDN1EndBuecSRzsbbGV8VvQqGaRoDi/PLx1GzGNzPEZq8D7kWHmo5/Lan8Rcy
	 6mGAQmbNWcZbrkR2CmvqVo2j+F2q79QB1IF38Pf6DeY2xyMYugYYxB7ILjPzTw0dGw
	 4GY2pVtyDg41+ZprebAb0wvC1wAPMg23p0L3JL3wIZ2hjKhPe5o8c4PF9bQK3ZmZSq
	 +PRLqakkNBakw==
From: Mark Brown <broonie@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Aaron Kling <webgeek1234@gmail.com>
In-Reply-To: <20260525-tegra194-qspi-iommu-v2-0-a11c53f804b2@gmail.com>
References: <20260525-tegra194-qspi-iommu-v2-0-a11c53f804b2@gmail.com>
Message-Id: <178032313909.44654.17999841515127150550.b4-ty@b4>
Date: Mon, 01 Jun 2026 15:12:19 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1428; i=broonie@kernel.org;
 h=from:subject:message-id; bh=CXeJ9bvnJoexsr0ZqogM4Dl8ae1EzlAlaa7aCsJn7q8=;
 b=owGbwMvMwMWocq27KDak/QLjabUkhiy54/XyPcEnBT53/v2Y89Ssy7P91+LkqBPJnziq4yQyu
 iZ4yRp2MhqzMDByMciKKbKsfZaxKj1cYuv8R/NfwQxiZQKZwsDFKQATSWpg/ytzi/0SS/F8eY6S
 3m9uifbs2fVZW8VOv5hQMd9/DnuY1L/MNR71RQK+z3+nXEiPKnc+L1pikeIVnFhT4eOz8F/TksV
 87Admvej7Y/ch/mZrUChvkZaTUOe9tDs8zlKdhTt19YqZOcrkq9o8/6TL8Avu/HHn6/oTwS3KK6
 2+PqhP57GbesA2+bzLmnthiy/liPeqmp3/E3OCh++/85nFD7eeDNo/galh569m8z0LRFPvPXr/Q
 yOOR8np1tNvWyMtzWbbvlda2BZ12EHlYaVAwKFEvlV3+B89rF9/p9bpbMn1dRcNHD1kMtg0ypYu
 O71tRtGTxFJX1YiVSfvVH3qteJJuH8D8xUb46NN96v+LAA==
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Spamd-Bar: ---
Message-ID-Hash: P5BOGPMBCPWEYOQ22Z4AVBGZWW4BZGSK
X-Message-ID-Hash: P5BOGPMBCPWEYOQ22Z4AVBGZWW4BZGSK
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-tegra@vger.kernel.org, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, devicetree@vger.kernel.org, Thierry Reding <treding@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v2 0/2] arm64: tegra: Enable DMA Support on Tegra194 QSPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P5BOGPMBCPWEYOQ22Z4AVBGZWW4BZGSK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:skomatineni@nvidia.com,m:ldewangan@nvidia.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:webgeek1234@gmail.com,m:linux-tegra@vger.kernel.org,m:linux-spi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:devicetree@vger.kernel.org,m:treding@nvidia.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,linaro.org,amd.com,gmail.com];
	FORGED_SENDER(0.00)[broonie@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F43962DD77

On Mon, 25 May 2026 01:47:43 -0500, Aaron Kling wrote:
> arm64: tegra: Enable DMA Support on Tegra194 QSPI
> 
> The reason for this is to properly support the spi nor chip on the
> Jetson Xavier NX module. Prior to this, it would time out on all
> transfers and sometimes even trigger a cbb fault, locking up the entire
> unit. With this, reading and writing to the flash memory works as
> expected.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-7.2

Thanks!

[1/2] spi: tegra210-quad: Allocate DMA memory for DMA engine
      https://git.kernel.org/broonie/spi/c/f469138a77ac

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
