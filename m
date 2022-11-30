Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ED363D1D2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 10:28:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD0063EF7B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 09:28:04 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id EF3203ED38
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 09:27:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=S1Sy+9MK;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669800475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zpmq/XpiWXbMOZEg66Zy7jVIb78OWdpjdWyyx9Qsyt0=;
	b=S1Sy+9MKwHcwh9qKLtrNYhKTL1HzwMYSvKWMpmaVrn6YGyGLkqoJwQvwOkznqvZRup3ywM
	BzFBUcEl7WNIYzGn613YVc23MFB7epdj22ibaQ5aOoCkLQrHSrQsCjEHteyeo96RZZbT/I
	5zA1HL+f5h+mO5lri2CQ21eSTokmXC8=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-659-vQimjficNkio5qG4PeOXnw-1; Wed, 30 Nov 2022 04:27:54 -0500
X-MC-Unique: vQimjficNkio5qG4PeOXnw-1
Received: by mail-wr1-f72.google.com with SMTP id d4-20020adfa404000000b002421ca8cb07so1885433wra.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 01:27:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zpmq/XpiWXbMOZEg66Zy7jVIb78OWdpjdWyyx9Qsyt0=;
        b=UKG/ffcnMOp9vFJpxVDu9z4XT2Ebi4wQxh8R5gZjXe14MhKki064EbSfSJZd5pmZjv
         vy3prys9QylBeKtchZMFZEWjXRpr6WgOfzP8rtbBmrMF9egFpCKnVYfkXFfIBxJnZgC4
         8sHmUL8nwYTpcYmH6hjksX0K7StSlmrpgD0VZ5U0xYR1OXIOicFFmz2JgxnBIRbxaK90
         MeSkQqhQ4UZmku0sMJnyExW8kUlxbVNSII7rQjjJtHrhb1rzepQ14V27kO5W6XpVygZg
         SC7jQtlL6bqGaqdG4ocAfvgsxpxsyEWwQRCUF2ofrZjzo4u3idMzMOxcLXtyoAqruB/Q
         i4EQ==
X-Gm-Message-State: ANoB5pmGWBl3gg6qUOz4+zrSakOWZfx+kSHygKwOUYCFMLlctqPY9/7w
	z/xWsc0FXIWeT3ez0gDnvC9/kR0N5yJP1ZtyEbEFbg4Fe4dxTCNs9W+8vPwm8KDM64K6fU0T9Ri
	1m7ClWsW4RG23+/azrTfW5hnWt7s=
X-Received: by 2002:a05:600c:3548:b0:3d0:4776:7b73 with SMTP id i8-20020a05600c354800b003d047767b73mr18743922wmq.40.1669800473518;
        Wed, 30 Nov 2022 01:27:53 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5lMQdNez6CG3ydcQTzf9gZFREx6F1ll3xRE649QPAQacBdUj+444faNh8sCrwOukxHZKgLEw==
X-Received: by 2002:a05:600c:3548:b0:3d0:4776:7b73 with SMTP id i8-20020a05600c354800b003d047767b73mr18743910wmq.40.1669800473261;
        Wed, 30 Nov 2022 01:27:53 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n187-20020a1ca4c4000000b003d005aab31asm1684955wme.40.2022.11.30.01.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 01:27:52 -0800 (PST)
Message-ID: <d2e3752d-ce25-2f79-7022-fc1f4cfacc07@redhat.com>
Date: Wed, 30 Nov 2022 10:27:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-9-efe5ed518b63@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-9-efe5ed518b63@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: EF3203ED38
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: J3ULI7TI5JTYMV54BX4L7CUB2TM5DWCT
X-Message-ID-Hash: J3ULI7TI5JTYMV54BX4L7CUB2TM5DWCT
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 09/17] drm/tests: helpers: Allow to pass a custom drm_driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J3ULI7TI5JTYMV54BX4L7CUB2TM5DWCT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/28/22 15:53, Maxime Ripard wrote:
> Some tests will need to provide their own drm_driver instead of relying
> on the dumb one in the helpers, so let's create a helper that allows to
> do so.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
