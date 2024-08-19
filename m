Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 77868956932
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Aug 2024 13:19:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B50940F16
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Aug 2024 11:19:08 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 030E73F3DE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Aug 2024 11:19:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of k.kozlowski.k@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=none)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-428119da952so33519455e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Aug 2024 04:19:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724066344; x=1724671144;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sunZvLa92UkOqmspgUhzvam8WEnzIrC7wUHtIu/3w/s=;
        b=Jxo35oUHBlIU5uGFXdWVe6lbx1X518/vZU9AuHvXwgCh3rQG/KGPnF8Mhe5EjwTwIr
         5pd35Goc4Cg6UaWue25mOgM+uEdGw7ePF0HDcu3OPy8QRvaiwAdaSV16hgndEbs9q04Y
         J3yEDQEoPMcPGcb+g9a89WVHk5qwozpP3o3wfPRHv58jmuqyhwCmOYmLv4I/H/fykfx0
         r29zcnhSyOY3Yl/vasJV+SgKQlImg8dulIVTcnghLM6HM5c4RyXEdVfxQzARW5itlFxO
         8y8TU7tzkx7vCvLYtGXCL+aJ/iXRIGhiTbcRk/WDgrpimoHtbu+Ah7d+LMl8KG2qUbFH
         M2kA==
X-Forwarded-Encrypted: i=1; AJvYcCXmqpDikCZ+lek09t9Y79ro7gbJeKAMYbp99lLtpVfT/8CMfYsRLSqr9PEGxUOIGt/FxgtV0EMBoshxJlF7YUJnNrwg2e9iytPtuTMFcLw=
X-Gm-Message-State: AOJu0YyVIzJ0/2LwH4u7dJJR0eM6RSS7uelXCRV4FsKtdEm6Ch9X/fV4
	RoXA8FMrdZ3mOEb7MZI2x0CoFLxvCkbWZDTJVc9ZrIJCwM8qfH4R
X-Google-Smtp-Source: AGHT+IHaE9BF0jWCsttsJkk+nv01MgngSkrhSoHa6kJlxiNainzPGo+JdtiEbmikHeT4Y6nIhCEvdA==
X-Received: by 2002:a05:600c:3152:b0:427:dae6:8416 with SMTP id 5b1f17b1804b1-429ed7d3583mr63636465e9.36.1724066343511;
        Mon, 19 Aug 2024 04:19:03 -0700 (PDT)
Received: from krzk-bin ([178.197.215.209])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-429ed648f55sm106525695e9.3.2024.08.19.04.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 04:19:02 -0700 (PDT)
Date: Mon, 19 Aug 2024 13:19:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hui-Ping Chen <hpchen0nvt@gmail.com>
Message-ID: <t7igmxzylpem6qbasb2esnren743m4dnzw6j3i7vn3dveubu5n@4sy6mmmlhtw3>
References: <20240819092037.110260-1-hpchen0nvt@gmail.com>
 <20240819092037.110260-3-hpchen0nvt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240819092037.110260-3-hpchen0nvt@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Bar: /
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 030E73F3DE
X-Spamd-Result: default: False [-0.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	FORGED_SENDER(0.30)[krzk@kernel.org,kkozlowskik@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[kernel.org : SPF not aligned (relaxed), No valid DKIM,none];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[178.197.215.209:received,209.85.128.54:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,kkozlowskik@gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: HFDKTTHVCQBTN2VIKK6IL6KPU4ZQL6I4
X-Message-ID-Hash: HFDKTTHVCQBTN2VIKK6IL6KPU4ZQL6I4
X-MailFrom: k.kozlowski.k@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, esben@geanix.com, linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HFDKTTHVCQBTN2VIKK6IL6KPU4ZQL6I4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 19, 2024 at 09:20:37AM +0000, Hui-Ping Chen wrote:
> Nuvoton MA35 SoCs NAND Flash Interface Controller
> supports 2KB, 4KB and 8KB page size, and up to 8-bit,
> 12-bit, and 24-bit hardware ECC calculation circuit
> to protect data communication.
> 
> Signed-off-by: Hui-Ping Chen <hpchen0nvt@gmail.com>
...

> +static int ma35_nand_probe(struct platform_device *pdev)
> +{
> +	struct ma35_nand_info *nand;
> +	struct nand_chip *chip;
> +	struct mtd_info *mtd;
> +	int retval = 0;
> +
> +	nand = devm_kzalloc(&pdev->dev, sizeof(*nand), GFP_KERNEL);
> +	if (!nand)
> +		return -ENOMEM;
> +
> +	nand_controller_init(&nand->controller);
> +
> +	nand->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(nand->regs))
> +		return PTR_ERR(nand->regs);
> +
> +	nand->dev = &pdev->dev;
> +	chip = &nand->chip;
> +	mtd = nand_to_mtd(chip);
> +	nand_set_controller_data(chip, nand);
> +	nand_set_flash_node(chip, pdev->dev.of_node);
> +
> +	mtd->priv = chip;
> +	mtd->owner = THIS_MODULE;
> +	mtd->dev.parent = &pdev->dev;
> +
> +	nand->clk = devm_clk_get(&pdev->dev, "nand_gate");
> +	if (IS_ERR(nand->clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(nand->clk),
> +				     "failed to find nand clock\n");
> +
> +	retval = clk_prepare_enable(nand->clk);
> +	if (retval < 0) {
> +		dev_err(&pdev->dev, "failed to enable clock\n");
> +		retval = -ENXIO;
> +	}
> +
> +	nand->chip.controller    = &nand->controller;
> +
> +	chip->legacy.cmdfunc     = ma35_nand_command;
> +	chip->legacy.waitfunc    = ma35_waitfunc;
> +	chip->legacy.read_byte   = ma35_nand_read_byte;
> +	chip->legacy.select_chip = ma35_nand_select_chip;
> +	chip->legacy.read_buf    = ma35_read_buf_dma;
> +	chip->legacy.write_buf   = ma35_write_buf_dma;
> +	chip->legacy.dev_ready   = ma35_nand_devready;
> +	chip->legacy.chip_delay  = 25; /* us */
> +
> +	/* Read OOB data first, then HW read page */
> +	chip->ecc.hwctl      = ma35_nand_enable_hwecc;
> +	chip->ecc.calculate  = ma35_nand_calculate_ecc;
> +	chip->ecc.correct    = ma35_nand_correct_data;
> +	chip->ecc.write_page = ma35_nand_write_page_hwecc;
> +	chip->ecc.read_page  = ma35_nand_read_page_hwecc_oob_first;
> +	chip->ecc.read_oob   = ma35_nand_read_oob_hwecc;
> +	chip->options |= (NAND_NO_SUBPAGE_WRITE | NAND_USES_DMA);
> +
> +	ma35_nand_initialize(nand);
> +	platform_set_drvdata(pdev, nand);
> +
> +	nand->controller.ops = &ma35_nand_controller_ops;
> +
> +	nand->irq = platform_get_irq(pdev, 0);
> +	if (nand->irq < 0)
> +		return dev_err_probe(&pdev->dev, nand->irq,
> +				     "failed to get platform irq\n");
> +
> +	if (request_irq(nand->irq, ma35_nand_irq, IRQF_TRIGGER_HIGH, "ma35d1-nand", nand)) {
> +		dev_err(&pdev->dev, "Error requesting NAND IRQ\n");
> +		return -ENXIO;
> +	}
> +
> +	retval = nand_scan(chip, 1);
> +	if (retval)
> +		return retval;
> +
> +	if (mtd_device_register(mtd, nand->parts, nand->nr_parts)) {
> +		nand_cleanup(chip);
> +		devm_kfree(&pdev->dev, nand);
> +		return retval;
> +	}
> +
> +	return retval;
> +}
> +
> +static void ma35_nand_remove(struct platform_device *pdev)
> +{
> +	struct ma35_nand_info *nand = platform_get_drvdata(pdev);
> +	struct nand_chip *chip = &nand->chip;
> +	int ret;
> +

Where do you release IRQ handler?

> +	ret = mtd_device_unregister(nand_to_mtd(chip));
> +	WARN_ON(ret);
> +	nand_cleanup(chip);
> +
> +	clk_disable_unprepare(nand->clk);
> +
> +	kfree(nand);

NAK, you never tested your code.

> +	platform_set_drvdata(pdev, NULL);

Why? Drop.

> +}
> +
> +/* PM Support */
> +#ifdef CONFIG_PM
> +static int ma35_nand_suspend(struct platform_device *pdev, pm_message_t pm)
> +{
> +	struct ma35_nand_info *nand = platform_get_drvdata(pdev);
> +	unsigned long timeo = jiffies + HZ/2;
> +
> +	/* wait DMAC to ready */
> +	while (1) {
> +		if ((readl(nand->regs + MA35_NFI_REG_DMACTL) & DMA_BUSY) == 0)
> +			break;
> +		if (time_after(jiffies, timeo))
> +			return -ETIMEDOUT;
> +	}
> +
> +	clk_disable(nand->clk);
> +
> +	return 0;
> +}
> +
> +static int ma35_nand_resume(struct platform_device *pdev)
> +{
> +	struct ma35_nand_info *nand = platform_get_drvdata(pdev);
> +
> +	clk_enable(nand->clk);
> +	ma35_nand_hwecc_init(nand);
> +	ma35_nand_dmac_init(nand);
> +
> +	return 0;
> +}
> +
> +#else
> +#define ma35_nand_suspend NULL
> +#define ma35_nand_resume NULL
> +#endif
> +
> +static const struct of_device_id ma35_nfi_of_match[] = {
> +	{ .compatible = "nuvoton,ma35d1-nand" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, ma35_nfi_of_match);
> +
> +static struct platform_driver ma35_nand_driver = {
> +		.driver = {

Messed indentation.

> +		.name   = "ma35d1-nand",
> +		.owner  = THIS_MODULE,

Drop. Please do not upstream some 10 year old code... Use recent code as
template, not 10yo stuff...

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
