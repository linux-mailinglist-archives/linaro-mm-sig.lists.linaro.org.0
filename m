Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CD94EACDD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:08:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 331223EC06
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:08:37 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 4EC083EB7E
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Mar 2022 17:00:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 30FEFB820F9;
	Wed,  2 Mar 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C66DC340ED;
	Wed,  2 Mar 2022 17:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1646240451;
	bh=/gWvP2vsXd8rkLtqrnHFSfxrMj9k6L9zIS6GLOLcGZg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ihaxAi5YdgX++mOBAWXxCQiSAgVpJ1bm319KXG1/l9w5dIEJ8a49WBAF0bnnhJHwe
	 OFWyNQYEzX7m15f5Ps7Lg/sz5VKQzjHbIajYbHKu4sArBHTdEioYzPR4rteswDlU0x
	 xwY5zGHUzdv07pXhhBNzZvhl1HN69wbhWvKYN1Sa3Kg7hfzcZAoMXh1U2YdQ1TLco5
	 qLIVTWM44ydf7rF4+SSZWTXfkDZ45GSyhidRet+RmpxNsjwaCgqBCrpLe9RrxuIvQr
	 YmMfZwPbRoY1FMx7syHCdW6/V+IGZgcJ8QfCtpAtc2D/FtrhuaXq8vOuB91hG71BY/
	 /lvtCeFIJ5BvA==
From: Mark Brown <broonie@kernel.org>
To: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>, Dan Carpenter <dan.carpenter@oracle.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220301081104.GB17375@kili>
References: <20220301081104.GB17375@kili>
Message-Id: <164624044896.1145067.17126236966898923867.b4-ty@kernel.org>
Date: Wed, 02 Mar 2022 17:00:48 +0000
MIME-Version: 1.0
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VS2LTGCOIYNB6PAXB5QNMJN2LMWCHLUI
X-Message-ID-Hash: VS2LTGCOIYNB6PAXB5QNMJN2LMWCHLUI
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:08:26 +0000
CC: dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>, =?utf-8?b?Q2hyaXN0aWFuIEvvv73vv71uaWc=?= <christian.koenig@amd.com>, kernel-janitors@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Banajit Goswami <bgoswami@codeaurora.org>, Liam Girdwood <lgirdwood@gmail.com>, alsa-devel@alsa-project.org, Jaroslav Kysela <perex@perex.cz>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] ASoC: qcom: Fix error code in lpass_platform_copy()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VS2LTGCOIYNB6PAXB5QNMJN2LMWCHLUI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 1 Mar 2022 11:11:04 +0300, Dan Carpenter wrote:
> The copy_to/from_user() functions return the number of bytes remaining
> to be copied.  This function needs to return negative error codes
> because snd_soc_pcm_component_copy_user() treats positive returns as
> success in soc_component_ret().
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: qcom: Fix error code in lpass_platform_copy()
      commit: d5dd781bcc81aa31b62310927f25cfa2574450f1

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
