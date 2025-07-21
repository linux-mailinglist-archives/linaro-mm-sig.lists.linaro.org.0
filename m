Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B5EB0C71D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 17:00:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA6B4456CD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 15:00:25 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 59C1B44A8A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jul 2025 15:00:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="IB/CSD6V";
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AA28961360;
	Mon, 21 Jul 2025 15:00:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39475C4CEED;
	Mon, 21 Jul 2025 15:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753110012;
	bh=VZAFEBYGkW7zkA9QHXJ+nLYWvFYNy70boXd5O+3hoTc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IB/CSD6Vq+QSQx7hD4TITcqcR5SxQBlyS50DA0avSGhIjlvqkcRKYI17VaEjvhG9G
	 8EkxIyAshM5qj5/Ca5ztlQkj1/5by7Mn9fXzKf4k03zrNSF4q6xKRa+9ynRjtY32c1
	 koQ/MqhOdb++vqwtjVnKSWpw8D55HKl5tj8mVRhwr8N/crPeyeNEJXMwY/S5CE8p8V
	 kD7P+aQdsXlW2q/DsTXwF+7EQEN/Fa5+0Tg3w6c5t9/A3e3yqdRXuhO3vmRAcdsZfN
	 IVxJw+tZ2vk2x/To/uEb0vgzEKb9n3+yTioSZBLwKbhoPU54izO08bAtR3kGxOEwzH
	 TX8rvX67snRIQ==
Date: Mon, 21 Jul 2025 10:00:11 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Message-ID: <175311001041.629023.12786244001330541185.robh@kernel.org>
References: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
 <20250721-6-10-rocket-v9-6-77ebd484941e@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250721-6-10-rocket-v9-6-77ebd484941e@tomeuvizoso.net>
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,kernel.org,lwn.net,lists.infradead.org,lists.linaro.org,suse.de,arm.com,ffwll.ch,gmail.com,linux.intel.com,vger.kernel.org,rock-chips.com,amd.com,pengutronix.de,sntech.de,fooishbar.org,libre.computer,lists.freedesktop.org,oss.qualcomm.com];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 59C1B44A8A
X-Spamd-Bar: -
Message-ID-Hash: B4E6NQI22MHXPFRPVHLDUUIQCARFGKXB
X-Message-ID-Hash: B4E6NQI22MHXPFRPVHLDUUIQCARFGKXB
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-rockchip@lists.infradead.org, linaro-mm-sig@lists.linaro.org, Thomas Zimmermann <tzimmermann@suse.de>, Robin Murphy <robin.murphy@arm.com>, Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-media@vger.kernel.org, Oded Gabbay <ogabbay@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, linux-doc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, dri-devel@lists.fr
 eedesktop.org, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 06/10] dt-bindings: npu: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B4E6NQI22MHXPFRPVHLDUUIQCARFGKXB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


On Mon, 21 Jul 2025 11:17:33 +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.
>=20
> v2:
> - Adapt to new node structure (one node per core, each with its own
>   IOMMU)
> - Several misc. fixes from Sebastian Reichel
>=20
> v3:
> - Split register block in its constituent subblocks, and only require
>   the ones that the kernel would ever use (Nicolas Frattaroli)
> - Group supplies (Rob Herring)
> - Explain the way in which the top core is special (Rob Herring)
>=20
> v4:
> - Change required node name to npu@ (Rob Herring and Krzysztof Kozlowski)
> - Remove unneeded items: (Krzysztof Kozlowski)
> - Fix use of minItems/maxItems (Krzysztof Kozlowski)
> - Add reg-names to list of required properties (Krzysztof Kozlowski)
> - Fix example (Krzysztof Kozlowski)
>=20
> v5:
> - Rename file to rockchip,rk3588-rknn-core.yaml (Krzysztof Kozlowski)
> - Streamline compatible property (Krzysztof Kozlowski)
>=20
> v6:
> - Remove mention to NVDLA, as the hardware is only incidentally related
>   (Kever Yang)
> - Mark pclk and npu clocks as required by all clocks (Rob Herring)
>=20
> v7:
> - Remove allOf section, not needed now that all nodes require 4 clocks
>   (Heiko St=FCbner)
>=20
> v8:
> - Remove notion of top core (Robin Murphy)
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  .../bindings/npu/rockchip,rk3588-rknn-core.yaml    | 112 +++++++++++++++=
++++++
>  1 file changed, 112 insertions(+)
>=20

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
