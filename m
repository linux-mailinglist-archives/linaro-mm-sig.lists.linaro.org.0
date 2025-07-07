Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2246FAFAB3E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 07:50:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BE3D4159B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 05:50:15 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 79AAC3F61A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 05:50:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dIut4TWp;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2F2D1A52C99;
	Mon,  7 Jul 2025 05:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4264AC4CEE3;
	Mon,  7 Jul 2025 05:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751867402;
	bh=H1uS+lRJDdIKeULrbOYxVDA++ia5TLO7SuOj0M3uK/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dIut4TWp53JwMnw9mex2FsExLGQGUavwebot/I3b/t4xvw0IIJk3dPFPV3CAF+0eq
	 /fWy9f3vAMXBRl4DZFFWTEuIWnztk0EYLXmHR3yWtFoTjDrL+EKH6KC5VKtTKLMm6T
	 HP7sP9REben2i/iLwmdN5Qt5BypVMEu1SN6VYzgZ1Dn+nTCNc06wbkdX5xi3iyD8wd
	 KVDuiaTyKjYQIfrZ9ag5OZ+5a13QrodgbuReDEqA61toH6f8R2zvMn++eQwxLnlfUu
	 UGa9GPrt5QIX3IBMjkFIrXeLdRFN093xAIhwUFsbAO6t32olgE2lR6y0d46f5wBZys
	 +9khuLgxKw+6w==
Date: Mon, 7 Jul 2025 07:50:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: shangyao lin <shangyao.lin@mediatek.com>
Message-ID: <20250707-lavender-peacock-of-patience-fdc712@krzk-bin>
References: <20250707013154.4055874-1-shangyao.lin@mediatek.com>
 <20250707013154.4055874-6-shangyao.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707013154.4055874-6-shangyao.lin@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 79AAC3F61A
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.62 / 15.00];
	BAYES_HAM(-2.62)[98.30%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mediatek.com:email];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,mediatek.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: CFNF76CVCPRLLTSFQDGD4JIWUJKSJVIQ
X-Message-ID-Hash: CFNF76CVCPRLLTSFQDGD4JIWUJKSJVIQ
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 05/13] media: platform: mediatek: add isp_7x seninf unit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CFNF76CVCPRLLTSFQDGD4JIWUJKSJVIQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 07, 2025 at 09:31:46AM +0800, shangyao lin wrote:
> From: "shangyao.lin" <shangyao.lin@mediatek.com>

My most frequent comment last year to Mediatek. I even asked to come
with some internal procedure so you will not keep repating the same
mistake in author's name.

Any success?

> 
> Introduce support for the MediaTek sensor interface (seninf) in the SoC camera

...

> 
> ---
> 
> Note:
> The PHY operations have been refactored and separated from the seninf driver,
> but there are still some issues to confirm with reviewers in this v2 patch
> (dt-bindings: media: mediatek: add seninf-core binding). The PHY part will be
> moved to drivers/phy/mediatek/ in v3.
> 
> Signed-off-by: shangyao.lin <shangyao.lin@mediatek.com>

and here the same.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
